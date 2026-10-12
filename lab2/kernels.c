/********************************************************
 * Kernels to be optimized for the CS:APP Performance Lab
 ********************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "defs.h"

/*
 * Please fill in the following student struct
 */
student_t student = {
    "Anonymous", /* 姓名 */

    "student" /* 学号 */
};

/*
 * Declaration of Convolutional Kernel
 */
int kernel_array[3][3] = {
    {1, 1, 1},
    {1, 1, 1},
    {1, 1, 1}};

/***************
 * ROTATE KERNEL
 ***************/

/******************************************************
 * Your different versions of the rotate kernel go here
 ******************************************************/

/*
 * naive_rotate - The naive baseline version of rotate
 */
char naive_rotate_descr[] = "naive_rotate: Naive baseline implementation";
void naive_rotate(int dim, pixel *src, pixel *dst)
{
    int i, j;

    for (i = 0; i < dim; i++)
        for (j = 0; j < dim; j++)
            dst[RIDX(j, dim - 1 - i, dim)] = src[RIDX(i, j, dim)];
}

/*
 * rotate - Your current working version of rotate
 * IMPORTANT: This is the version you will be graded on
 */

char rotate_descr[] = "rotate: Current working version";

void rotate(int dim, pixel *src, pixel *dst)
{
    //naive_rotate(dim, src, dst);
    int i, j;
    int dim1 = dim - 1;
    int BLOCK = 16;

    for (j = 0; j < dim; j+=BLOCK){
        for (i = 0; i < dim; i+=BLOCK){
            for(int ii =i; ii < i + BLOCK && ii < dim; ii++){
                for (int jj = j; jj < j + BLOCK && jj < dim; jj++){
                    int dst_col = dim1 - ii;
                    dst[RIDX(jj, dst_col, dim)] = src[RIDX(ii, jj, dim)];
                }
            }
        }
    }
}

/*********************************************************************
 * register_rotate_functions - Register all of your different versions
 *     of the rotate kernel with the driver by calling the
 *     add_rotate_function() for each test function. When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.
 *********************************************************************/

void register_rotate_functions()
{
    add_rotate_function(&naive_rotate, naive_rotate_descr);
    add_rotate_function(&rotate, rotate_descr);
    /* ... Register additional test functions here */
}

/***************
 * SMOOTH KERNEL
 **************/

/***************************************************************
 * Various typedefs and helper functions for the smooth function
 * You may modify these any way you like.
 **************************************************************/

/* A struct used to compute averaged pixel value */
typedef struct
{
    int red;
    int green;
    int blue;
    int num;
} pixel_sum;

/* Compute min and max of two integers, respectively */
static int min(int a, int b) { return (a < b ? a : b); }
static int max(int a, int b) { return (a > b ? a : b); }

/*
 * initialize_pixel_sum - Initializes all fields of sum to 0
 */
static void initialize_pixel_sum(pixel_sum *sum)
{
    sum->red = sum->green = sum->blue = 0;
    sum->num = 0;
    return;
}

/*
 * accumulate_sum - Accumulates field values of p in corresponding
 * fields of sum
 */
static void accumulate_sum(pixel_sum *sum, pixel p)
{
    sum->red += (int)p.red;
    sum->green += (int)p.green;
    sum->blue += (int)p.blue;
    sum->num++;
    return;
}

/*
 * assign_sum_to_pixel - Computes averaged pixel value in current_pixel
 */
static void assign_sum_to_pixel(pixel *current_pixel, pixel_sum sum)
{
    current_pixel->red = (unsigned short)(sum.red / sum.num);
    current_pixel->green = (unsigned short)(sum.green / sum.num);
    current_pixel->blue = (unsigned short)(sum.blue / sum.num);
    return;
}

/*
 * avg - Returns averaged pixel value at (i,j)
 */
static pixel avg(int dim, int i, int j, pixel *src)
{
    int ii, jj;
    pixel_sum sum;
    pixel current_pixel;

    initialize_pixel_sum(&sum);
    for (ii = max(i - 1, 0); ii <= min(i + 1, dim - 1); ii++)
    {
        for (jj = max(j - 1, 0); jj <= min(j + 1, dim - 1); jj++)
        {
            if (kernel_array[ii - i + 1][jj - j + 1] == 1)
            {
                accumulate_sum(&sum, src[RIDX(ii, jj, dim)]);
            }
        }
    }

    assign_sum_to_pixel(&current_pixel, sum);
    return current_pixel;
}

/******************************************************
 * Your different versions of the smooth kernel go here
 ******************************************************/

/*
 * naive_smooth - The naive baseline version of smooth
 */
char naive_smooth_descr[] = "naive_smooth: Naive baseline implementation";
void naive_smooth(int dim, pixel *src, pixel *dst)
{
    int i, j;

    for (i = 0; i < dim; i++)
        for (j = 0; j < dim; j++)
            dst[RIDX(i, j, dim)] = avg(dim, i, j, src);
}

/*
 * smooth - Your current working version of smooth.
 * IMPORTANT: This is the version you will be graded on
 */
char smooth_descr[] = "smooth: Current working version";
void smooth(int dim, pixel *src, pixel *dst)
{
    int i, j;
    pixel p;
    int r = 0, g = 0, b = 0;

    //处理内部像素
    for (i = 1; i < dim-1; i++) {
        for (j = 1; j < dim-1; j++) {
            r = 0, g = 0, b = 0;
            
            p = src[RIDX(i-1,j+1,dim)];  
            r += p.red; g += p.green; b += p.blue;
            
            p = src[RIDX(i,j,dim)];        
            r += p.red; g += p.green; b += p.blue;
            
            p = src[RIDX(i,j+1,dim)];        
            r += p.red; g += p.green; b += p.blue;
            
            p = src[RIDX(i+1,j,dim)];           
            r += p.red; g += p.green; b += p.blue;
          
            p = src[RIDX(i+1,j+1,dim)];       
            r += p.red; g += p.green; b += p.blue;
            
            //算平均值
            dst[RIDX(i,j,dim)].red = r / 5;
            dst[RIDX(i,j,dim)].green = g / 5;
            dst[RIDX(i,j,dim)].blue = b / 5;
        }
    }

    //处理四个角像素
    //左上角
    int count = 0;
    r = 0, g = 0, b = 0;

    //有效位置：(0,0) (0,1) (1,0) (1,1)
    p = src[RIDX(0,0,dim)];
    r += p.red; g += p.green; b += p.blue; count++;
    p = src[RIDX(0,1,dim)];
    r += p.red; g += p.green; b += p.blue; count++;
    p = src[RIDX(1,0,dim)];
    r += p.red; g += p.green; b += p.blue; count++;
    p = src[RIDX(1,1,dim)];
    r += p.red; g += p.green; b += p.blue; count++;
    
    dst[RIDX(0,0,dim)].red = r / count;
    dst[RIDX(0,0,dim)].green = g / count;
    dst[RIDX(0,0,dim)].blue = b / count;
    

    //右上角(0,dim-1)
    r = g = b = count = 0;
    
    //有效位置:(0,dim - 1) (1,dim - 1)
    p = src[RIDX(0,dim-1,dim)];
    r += p.red; g += p.green; b += p.blue; count++;
    p = src[RIDX(1,dim-1,dim)];
    r += p.red; g += p.green; b += p.blue; count++;
    
    dst[RIDX(0,dim-1,dim)].red = r / count;
    dst[RIDX(0,dim-1,dim)].green = g / count;
    dst[RIDX(0,dim-1,dim)].blue = b / count;
    
    //左下角 (dim-1,0)
    r = g = b = count = 0;
    
    //有效位置:(dim - 2,1) (dim - 1,0) (dim - 1,1)
    p = src[RIDX(dim-2,1,dim)];
    r += p.red; g += p.green; b += p.blue; count++;
    p = src[RIDX(dim-1,0,dim)];
    r += p.red; g += p.green; b += p.blue; count++;
    p = src[RIDX(dim-1,1,dim)];
    r += p.red; g += p.green; b += p.blue; count++;
    

    dst[RIDX(dim-1,0,dim)].red = r / count;
    dst[RIDX(dim-1,0,dim)].green = g / count;
    dst[RIDX(dim-1,0,dim)].blue = b / count;


    //右下角(dim-1,dim-1)
    i = dim-1; j = dim-1;
    r = g = b = count = 0;
    
    //有效位置:(dim - 1, dim - 1)
    p = src[RIDX(dim-1,dim-1,dim)];
    r += p.red; g += p.green; b += p.blue; count++;
    
    dst[RIDX(dim-1,dim-1,dim)].red = r / count;
    dst[RIDX(dim-1,dim-1,dim)].green = g / count;
    dst[RIDX(dim-1,dim-1,dim)].blue = b / count;

    //处理四条边界
    //上边界(i=0, j=1~dim-2)
    for (j = 1; j < dim-1; j++) {
        r = g = b = count = 0;
        i = 0;
        
        //有效位置:(0,j) (0,j+1) (1,j) (1,j+1)
        p = src[RIDX(0,j,dim)];
        r += p.red; g += p.green; b += p.blue; count++;
        p = src[RIDX(0,j+1,dim)];
        r += p.red; g += p.green; b += p.blue; count++;
        p = src[RIDX(1,j,dim)];
        r += p.red; g += p.green; b += p.blue; count++;
        p = src[RIDX(1,j+1,dim)];
        r += p.red; g += p.green; b += p.blue; count++;
        
        dst[RIDX(0,j,dim)].red = r / count;
        dst[RIDX(0,j,dim)].green = g / count;
        dst[RIDX(0,j,dim)].blue = b / count;
    }

    //下边界(i=dim-1, j=1~dim-2)
    for (j = 1; j < dim-1; j++) {
        r = g = b = count = 0;
        i = dim-1;
        
        //有效位置：(dim - 2,j + 1),(dim - 1, j) (dim - 1,j + 1)
        p = src[RIDX(dim-2,j+1,dim)];
        r += p.red; g += p.green; b += p.blue; count++;
        p = src[RIDX(dim-1,j,dim)];
        r += p.red; g += p.green; b += p.blue; count++;
        p = src[RIDX(dim-1,j+1,dim)];
        r += p.red; g += p.green; b += p.blue; count++;

        dst[RIDX(dim-1,j,dim)].red = r / count;
        dst[RIDX(dim-1,j,dim)].green = g / count;
        dst[RIDX(dim-1,j,dim)].blue = b / count;
    }

    //左边界(i=1~dim-2,j=0)
    for (i = 1; i < dim-1; i++) {
        j = 0;
        r = g = b = count = 0;
        
        //(i-1,1) (i,0) (i,1) (i+1,0) (i+1,1)
        p = src[RIDX(i-1,1,dim)];
        r += p.red; g += p.green; b += p.blue; count++;
        p = src[RIDX(i,0,dim)];
        r += p.red; g += p.green; b += p.blue; count++;
        p = src[RIDX(i,1,dim)];
        r += p.red; g += p.green; b += p.blue; count++;
        p = src[RIDX(i+1,0,dim)];
        r += p.red; g += p.green; b += p.blue; count++;
        p = src[RIDX(i+1,1,dim)];
        r += p.red; g += p.green; b += p.blue; count++;
        
        dst[RIDX(i,0,dim)].red = r / count;
        dst[RIDX(i,0,dim)].green = g / count;
        dst[RIDX(i,0,dim)].blue = b / count;
    }

    //右边界(i=1~dim-2,j=dim-1)
    for (i = 1; i < dim-1; i++) {
        j = dim-1;
        r = g = b = count = 0;
        
        //有效位置：(i,dim-1) (i+1,dim-1)
        p = src[RIDX(i,dim-1,dim)];
        r += p.red; g += p.green; b += p.blue; count++;
        p = src[RIDX(i+1,dim-1,dim)];
        r += p.red; g += p.green; b += p.blue; count++;

        dst[RIDX(i,dim-1,dim)].red = r / count;
        dst[RIDX(i,dim-1,dim)].green = g / count;
        dst[RIDX(i,dim-1,dim)].blue = b / count;
    }
}

/*********************************************************************
 * register_smooth_functions - Register all of your different versions
 *     of the smooth kernel with the driver by calling the
 *     add_smooth_function() for each test function.  When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.
 *********************************************************************/

void register_smooth_functions()
{
    add_smooth_function(&smooth, smooth_descr);
    add_smooth_function(&naive_smooth, naive_smooth_descr);
    /* ... Register additional test functions here */
}
