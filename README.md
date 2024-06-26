# AdvancedWebProject
Project for Advanced Web Development and Applications course
## Member
<div style="display: flex; justify-content: center;">
    <table border="1">
        <thead>
            <tr>
                <th style="text-align: center;">Order</th>
                <th style="text-align: center;">Student ID</th>
                <th style="text-align: center;">Full Name</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="text-align: center;">1</td>
                <td style="text-align: center;">3121410046</td>
                <td><a href="https://an-hdt.github.io/AnHDT_portfolio/">Huỳnh Dương Thái An</a></td>
            </tr>
            <tr>
                <td style="text-align: center;">2</td>
                <td style="text-align: center;">3121560001</td>
                <td><a href="https://huukienit.github.io/HuuKien-Portfolio/">Ngũ Hữu Kiên</a></td>
            </tr>
            <tr>
                <td style="text-align: center;">3</td>
                <td style="text-align: center;">3121410470</td>
                <td><a href="https://thientranreal.github.io/thien-portfolio/">Lê Đức Duy Tân</a></td>
            </tr>
            <tr>
                <td style="text-align: center;">3</td>
                <td style="text-align: center;">3121410470</td>
                <td><a href="">Nguyễn Hoàng Đăng</a></td>
            </tr>
            <tr>
                <td style="text-align: center;">3</td>
                <td style="text-align: center;">3121410470</td>
                <td><a href="">Nguyễn Văn Thành</a></td>
            </tr>
        </tbody>
    </table>   
</div>

## Features
**For Users:**
- User Authentication: Implement a secure registration and login system for users to access the platform.
- Customizable Profiles: Allow users to personalize their profiles by adding relevant information such as shoe preferences, sizes, and favorite brands. They should also have the ability to update their profile information and manage their account settings.
- Product Management: Easily add, edit, and remove shoe products from the inventory. Include details such as product images, descriptions, sizes, colors, and prices.
- Shopping Cart: Enable users to add desired shoes to their shopping cart for easy checkout.
- Order Tracking: Provide users with the ability to track the status of their orders, including order history and shipment tracking.
- Reviews and Ratings: Implement a system where users can leave reviews and ratings for shoes they've purchased, helping others make informed decisions.
- Search Functionality: Allow users to search for specific shoe products based on criteria such as brand, size, color, and price range.
- Newsletter Subscription: Allow users to subscribe to newsletters to receive updates on new arrivals, promotions, and special offers.
- Responsive Design: Ensure the website is optimized for various devices, including desktops, tablets, and smartphones, for a seamless user experience.

**For Admin:**
- Admin Dashboard: Provide a centralized dashboard for administrators to manage the website, including user accounts, product listings, orders, and site settings.
- User Management: Allow administrators to view and manage user accounts, including the ability to activate, deactivate, or delete accounts, as well as manage user roles and permissions.
- Product Management: Enable administrators to add, edit, and remove shoe products from the inventory, including the ability to update product details, images, and inventory levels.
- Order Management: Allow administrators to view and manage orders, including order processing, fulfillment, and tracking.
- Analytics and Reporting: Provide administrators with access to analytics and reporting tools to track key metrics such as website traffic, sales performance, and user engagement.
- Content Management: Allow administrators to manage website content such as static pages, banners, and promotional materials.
- Role-Based Access Control: Implement role-based access control (RBAC) to define different levels of access for administrators. Assign roles such as super admin, manager, and staff, with varying permissions based on their responsibilities. Super admins have full access to all features and settings, while other roles have restricted access based on their assigned permissions.

## Installation

### Linux
1. Install PHP
   ```shell
    sudo apt-get install php 
   ```
2. Install MySQL:
    ```shell
    sudo apt-get install mysql-server
    ```
3. Install Apache:
   ```shell
   sudo apt-get install apache2
   ```
4. Clone the repository:
   ```shell
   git clone https://github.com/HuuKienIT/AdvancedWebProject.git
   ```
5. Navigate to the project directory:
    ```shell
    cd AdvancedWebProject
    ```
6. Set up the database:
    ```shell
    mysql -u username -p
    ```
    ```shell
    CREATE DATABASE instagram_db;
    ```
8. Import the database schema:
    ```shell
    mysql -u username -p instagram_db < database_schema.sql
    ```
9. Start the Apache server:
    ```shell
    sudo service apache2 start
    ```
10. Access the website at http://localhost/shop-giay in your web browser.

### Windows
1. Download and install XAMPP which includes PHP, MySQL, and Apache.
2. Run XAMPP and start the Apache and MySQL services.
3. Clone the repository into the htdocs directory inside the XAMPP installation folder.
4. Navigate to http://localhost/phpmyadmin in your web browser and create a new database named instagram_db.
5. Import the database schema using the database_schema.sql file provided in the repository.
6. Access the website at http://localhost/shop-giay in your web browser.

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).
