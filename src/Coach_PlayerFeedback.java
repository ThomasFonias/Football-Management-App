/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

public class Coach_PlayerFeedback extends javax.swing.JFrame {

    /**
     * Creates new form Home
     */
    public Coach_PlayerFeedback() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        page = new javax.swing.JLabel();
        back = new javax.swing.JLabel();
        jComboBox_Plan = new javax.swing.JComboBox<>();
        feedback = new javax.swing.JButton();
        jComboBox_Player = new javax.swing.JComboBox<>();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        page.setIcon(new javax.swing.ImageIcon("C:\\Users\\giann\\Downloads\\Mockups-FM\\Mockups\\FM-CA-Feedback.png")); // NOI18N
        page.setText(" ");
        getContentPane().add(page, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 840, 570));

        back.setText(" ");
        back.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                backMouseClicked(evt);
            }
        });
        getContentPane().add(back, new org.netbeans.lib.awtextra.AbsoluteConstraints(740, 20, 90, 30));

        jComboBox_Plan.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Plan 1", "Plan 2", "Plan 3", "Plan 4" }));
        jComboBox_Plan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox_PlanActionPerformed(evt);
            }
        });
        getContentPane().add(jComboBox_Plan, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 160, 140, 30));

        feedback.setText("jButton1");
        getContentPane().add(feedback, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 530, 120, 20));

        jComboBox_Player.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Nikolas", "Giorgos", "Giannis", "Kostas", "Mixalis", "Angelo", "Alexios", "Shasha", "Mike Jr", "Jordan", "Stelios" }));
        jComboBox_Player.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox_PlayerActionPerformed(evt);
            }
        });
        getContentPane().add(jComboBox_Player, new org.netbeans.lib.awtextra.AbsoluteConstraints(450, 160, 180, 30));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void backMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_backMouseClicked
        Coach a = new Coach();
        a.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_backMouseClicked

    private void jComboBox_PlanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox_PlanActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBox_PlanActionPerformed

    private void jComboBox_PlayerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox_PlayerActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBox_PlayerActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Home.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Home.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Home.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Home.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Home().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel back;
    private javax.swing.JButton feedback;
    private javax.swing.JComboBox<String> jComboBox_Plan;
    private javax.swing.JComboBox<String> jComboBox_Player;
    private javax.swing.JLabel page;
    // End of variables declaration//GEN-END:variables
}