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
## Interface
1. Login
<img src="apps/static/image/READMEIMG/login.png" alt="Login">
2. Register
<img src="apps/static/image/READMEIMG/register.png" alt="Register">
3. Home
<img src="apps/static/image/READMEIMG/home.png" alt="Home">
4. Add post
<img src="apps/static/image/READMEIMG/createPost.png" alt="Add post">
5. Delete post 
<img src="apps/static/image/READMEIMG/deletePost.png" alt="Delete post">
6. Edit post
<img src="apps/static/image/READMEIMG/editPost.png" alt="Edit post">
7. Profile
<img src="apps/static/image/READMEIMG/profile.png" alt="Profile">
8. Edit profile 
<img src="apps/static/image/READMEIMG/editProfile.png" alt="Edit profile">
9. Change password
<img src="apps/static/image/READMEIMG/changePassword.png" alt="Change password">
10. Friends
<img src="apps/static/image/READMEIMG/friend.png" alt="Friends">
11. Notifications
<img src="apps/static/image/READMEIMG" alt="Notifications">
12. Messenger
<img src="apps/static/image/READMEIMG" alt="Messenger">
13. Individual call
<img src="apps/static/image/READMEIMG" alt="Individual call">
14. Group call
<img src="apps/static/image/READMEIMG" alt="Group call"> 

## Installation

### Linux
1. Install Python:
    ```shell
    sudo apt-get install python 
    ```
2. Install Django:
    ```shell
    pip install django 
    ```
3. Clone the repository:
    ```shell
    git clone https://github.com/thientranreal/InstagramProject.git
    ```
4. Navigate to the project directory:
    ```shell
    cd InstagramProject
    ```
5. Install the required dependencies:
    ```shell
    pip install -r requirements.txt
    ```
6. Set up the database:
    ```shell
    python manage.py migrate
    ```
7. Start the development server:
    ```shell
    python manage.py runserver
    ```
8. Access the website at `http://localhost:8000` in your web browser.

### Windows
1. Visit the [Python website](https://www.python.org/downloads/) to choose the appropriate version.
2. Run the .exe file to install Python.
3. Check the version: 
    ```shell
    python --version 
    ```
4. Install Django: 
    ```shell
    pip install django
    ```
5. Clone the repository:
    ```shell
    git clone https://github.com/thientranreal/InstagramProject.git
    ```
6. Navigate to the project directory:
    ```shell
    cd InstagramProject
    ```
7. Install the required dependencies:
    ```shell
    pip install -r requirements.txt
    ```
8. Set up the database:
    ```shell
    python manage.py migrate
    ```
9. Start the development server:
    ```shell
    python manage.py runserver
    ```
10. Access the website at `http://localhost:8000` in your web browser.

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).
