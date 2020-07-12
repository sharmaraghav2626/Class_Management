/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaproject;

import javax.swing.Timer;

/**
 *
 * @author dell2
 */
public class Javaproject {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                
            new WelcomeWindow().setVisible(true);
            }
        });
        
        // TODO code application logic here
    }
    
}
