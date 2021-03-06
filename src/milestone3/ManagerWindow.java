package milestone3;

import java.awt.FlowLayout;
import java.util.ArrayList;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

public class ManagerWindow {
	
	public static void main(String[] args)
	{
		create();
	}
	
	public static void create()
	{
		//Creates a new Frame
		JFrame frame = new JFrame();
		frame.setTitle("Managers");
		
		//Set frame layout
		frame.setLayout(new FlowLayout());
		
		JLabel header = new JLabel("Submit Manager ID:");
		
		
		//TextField
		JTextField managerID = new JTextField("",10);
		
		//Make buttons
		JButton submitButton = new JButton("Submit");
	
		//Add buttons
		frame.add(header);
		frame.add(managerID);
		frame.add(submitButton);
		
		//Makes the frame open with the given buttons
		frame.pack();
		frame.setVisible(true);
		
		
		//Adds actions
		submitButton.addActionListener(event -> {
			try {
				int input = Integer.parseInt(managerID.getText());
				
				TheConnection con = new TheConnection();
				//System.out.println("Success");
				ArrayList<String> results = con.queryA(input);
				new ResultsWindow();
				ResultsWindow.create(results);
			}
			catch(NumberFormatException e)
			{
				JFrame frame1 = new JFrame();
				frame1.add(new JLabel("Please enter an integer"));
				frame1.pack();
				frame1.setVisible(true);
				
			}
			catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		});				
	}
	
}