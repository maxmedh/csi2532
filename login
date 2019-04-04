package login1;

import java.awt.Component;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import javax.swing.JSeparator;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class login_System {

	private JFrame frame;
	private JTextField txtUsername;
	private JPasswordField txtPassword;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					login_System window = new login_System();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public login_System() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setBounds(200, 200, 500, 300);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JLabel lblLogin = new JLabel("     Login System");
		lblLogin.setBounds(207, 14, 124, 21);
		frame.getContentPane().add(lblLogin);
		
		JLabel lblUsername = new JLabel("Username");
		lblUsername.setBounds(35, 58, 88, 21);
		frame.getContentPane().add(lblUsername);
		
		JLabel lblPassword = new JLabel("Password");
		lblPassword.setBounds(35, 160, 61, 16);
		frame.getContentPane().add(lblPassword);
		
		txtUsername = new JTextField();
		txtUsername.setBounds(174, 58, 182, 26);
		frame.getContentPane().add(txtUsername);
		txtUsername.setColumns(10);
		
		txtPassword = new JPasswordField();
		txtPassword.setBounds(174, 155, 182, 26);
		frame.getContentPane().add(txtPassword);
		
		JButton btnLogin = new JButton("Login");
		btnLogin.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String password= txtPassword.getText();
				String username= txtUsername.getText();
				
				if (username.contains("oui") && password.contains("non")) {
					txtPassword.setText(null);
					txtUsername.setText(null);
					
				}
				else
				{
					JOptionPane.showMessageDialog(null, "Invalid Login Details", "Login Error", JOptionPane.ERROR_MESSAGE);
					txtPassword.setText(null);
					txtUsername.setText(null);
				}
			}
		});
		btnLogin.setBounds(30, 225, 117, 29);
		frame.getContentPane().add(btnLogin);
		
		JButton btnReset = new JButton("Reset");
		btnReset.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				txtUsername.setText(null);
				txtUsername.setText(null);
			}
		});
		btnReset.setBounds(203, 225, 117, 29);
		frame.getContentPane().add(btnReset);
		
		JButton btnExit = new JButton("Exit");
		btnExit.addActionListener(new ActionListener() {
			private Component frmLoginSystem;

			public void actionPerformed(ActionEvent e) {
			frmLoginSystem = new JFrame ("Exit");
			if (JOptionPane.showConfirmDialog(frmLoginSystem,  "Confirm if you want to exit", "Login Systems", JOptionPane.YES_NO_OPTION)== JOptionPane.YES_NO_OPTION){
				System.exit(0);
			}
			}
			
		});
		btnExit.setBounds(357, 225, 117, 29);
		frame.getContentPane().add(btnExit);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(6, 193, 488, 20);
		frame.getContentPane().add(separator);
		
		JSeparator separator_1 = new JSeparator();
		separator_1.setBounds(6, 36, 494, 12);
		frame.getContentPane().add(separator_1);
	}
}




