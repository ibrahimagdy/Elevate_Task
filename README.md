# 📝 Elevate Task

  The Task is to implement screen that shows a list of products in a recycler view using the following api :
 (https://fakestoreapi.com/products)

 ## 📥  Installation

1. **Clone the Repo:**

   Clone the repository to your local machine:

   ```bash
   git clone https://github.com/ibrahimagdy/Elevate_Task.git

2. **Install Dependencies:**
   ```bash
   flutter pub get

# 📱 screenshot from the implemented design

<img width="443" alt="Screenshot 2024-09-14 at 8 05 11 PM" src="https://github.com/user-attachments/assets/60246afd-4c2a-4255-b526-78915e3fc330">

# 🎨 System Design 

The app is built using the Clean Architecture pattern, which promotes separation of concerns and makes the codebase more maintainable and testable. This architecture divides the project into three main layers:

- UI Layer: Manages the UI and handles user interactions. This layer includes views and widgets.
- Logic Layer: Contains state management of app using (flutter_bloc).
- Data Layer: Handles data sources such as APIs. This layer includes data models and repositories.

By using Clean Architecture, the project achieves a clear separation between business logic and UI, making it scalable, testable, and easy to maintain.

![Untitled (1)](https://github.com/user-attachments/assets/1d93fd06-4c15-4f81-beb5-8c5ba5cc759c)
