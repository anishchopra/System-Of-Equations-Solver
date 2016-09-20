//
//  Matrix Functions.swift
//  System of Equations Solver
//
//  Created by Anish Chopra on 2015-01-06.
//  Copyright (c) 2015 Anish Chopra. All rights reserved.
//

import Foundation

// Calculate the determinant of the matrix by expanding along the first row
func determinant(matrix: [[Double]]) -> Double {
    let n = matrix[0].count;
    if (n == 1) {
        return matrix[0][0];
    }
    if (n == 2) {
        return (matrix[0][0]*matrix[1][1]-matrix[0][1]*matrix[1][0]);
    }
    
    var det = 0.0;
    
    for (var i=0; i<n; i++) {
        var newMatrix: [[Double]] = [];
        
        for (var j = 1; j < n; j++) {
            var row = matrix[j]
            row.removeAtIndex(i)
            newMatrix.append(row)
        }
        var d = matrix[0][i]*determinant(newMatrix)
        if (i%2 == 1) {
            d *= -1
        }
        det += d;
    }
    
    return det;
}

// Calculate the coFactor matrix
func coFactor(matrix: [[Double]]) -> [[Double]] {
    var cm: [[Double]] = [];
    
    let n = matrix[0].count;
    
    for (var i=0; i<n; i++) {
        var cRow: [Double] = [];
        
        for (var j=0; j<n; j++) {
            var newMatrix: [[Double]] = [];
            
            for row in matrix {
                var temp = row;
                temp.removeAtIndex(j);
                newMatrix.append(temp);
            }
            
            newMatrix.removeAtIndex(i);
            
            var cValue = determinant(newMatrix);
            
            if ((i+j)%2 == 1) {
                cValue *= -1;
            }
            
            cRow.append(cValue);
        }
        cm.append(cRow);
    }
    return cm;
}

// Calculate the dot product of v1 and v2
func dotProduct(v1: [Double], v2: [Double]) -> Double {
    let n = v1.count;
    
    var dotProduct = 0.0;
    
    for (var i=0; i<n; i++) {
        dotProduct += v1[i]*v2[i];
    }
    
    return dotProduct;
}

// Evalute the product of matrix and vector b
func eval(matrix: [[Double]], b: [Double]) -> [Double] {
    var n = b.count;
    
    var result: [Double] = [];
    
    for (var i=0; i<n; i++) {
        result.append(dotProduct(b, v2: matrix[i]));
    }
    
    return result;
}

// Calculate the transpose of a matrix
func transpose(matrix: [[Double]]) -> [[Double]] {
    let n = matrix[0].count;
    var tr : [[Double]] = Array(count: n, repeatedValue: Array(count: n, repeatedValue: 0.0));
    
    for (var i=0; i<n; i++) {
        for (var j=0; j<n; j++) {
            tr[j][i] = matrix[i][j];
        }
    }
    
    return tr;
}


// Solve a system of equations Ax=b given matrix A and vector b
// Return nil if there are no solutions or infinite solutions (if det(A) = 0)
func solve(matrix: [[Double]], b: [Double]) -> [Double]? {
    var det = determinant(matrix);
    
    if (det == 0) {
        return nil;
    }
    
    var cof = coFactor(matrix);
    
    var tr = transpose(cof);
    
    var result = eval(tr,
        b: b);
    
    for (var i=0; i<result.count; i++) {
        result[i] = result[i] / det;
    }
    
    return result;
}
