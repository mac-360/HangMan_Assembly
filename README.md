#  HangMan_Assembly
---
<img src="https://github.com/mac-360/HangMan_Assembly/assets/122281916/b36760cb-675f-4b32-9e5d-8453d4a6cf7b" alt="Hangman Screenshot" style="width: 1024px; height: 300px;">

---
## Introduction:

Welcome to Hangman, a classic word guessing game brought to life in assembly language for DOS. Hangman is a simple yet entertaining game where players must guess a secret word letter by letter before they run out of attempts and hang the poor stick figure.

In this assembly version of Hangman, players will be presented with a hidden word represented by blank spaces, with each blank representing a letter in the word. The objective is to guess the word correctly by guessing one letter at a time. With each incorrect guess, a part of the hangman's body gets drawn, bringing the player closer to losing the game. But with each correct guess, the letters are revealed, making it easier to deduce the hidden word.

This Hangman game offers a nostalgic experience reminiscent of the early days of computer gaming, where simplicity and fun were paramount. Whether you're a seasoned player looking to relive the nostalgia of retro gaming or a newcomer eager to experience the charm of classic games, Hangman in assembly for DOS promises an enjoyable gaming experience for all.

So, sharpen your wits, dust off your keyboard, and let the guessing begin! Can you unravel the mystery word before it's too late? Play Hangman and find out!

--- 

## Usage:

1. **Running the Program:**

   - Ensure you have DOSBox or any compatible x86 DOS emulator installed on your system.
   - Open DOSBox and mount the directory containing the program files.
   
      ```
      mount c: [path to the directory containing the program files]
      c:
      ```
   
   - Type the following command to assemble the program:
   
      ```
      nasm [filename.asm] -o [filename.com]
      ```
   
      Replace `[filename.asm]` and `[filename.com]` with the appropriate values for your setup.
   
   - Execute the assembled program:
   
      ```
      [filename.com]
      ```
   
   - Press Enter after each command to execute it.
  
   - Press Enter after each command to execute it.


2. **Input:**

In the Hangman game, the input is provided by the user through the keyboard. Players are prompted to enter a single letter as their guess. They can input letters using their keyboard to submit their guess. The game will then process the input and provide feedback based on whether the guessed letter is correct or incorrect.

3. **Output:**

When running the Hangman game, users can expect the following types of output:

- Display of the secret word with blank spaces representing unguessed letters.
- If the guessed letter is correct:
  - All occurrences of the guessed letter in the word are revealed to the player.
- If the guessed letter is incorrect:
  - The stick man turns red to indicate an incorrect guess.
- Visual representation of the hangman's progress, showing the parts of the hangman that have been drawn as incorrect guesses accumulate.
---
<div style="text-align:center;">
    <img width="317" alt="GamePlay" src="https://github.com/mac-360/HangMan_Assembly/assets/122281916/da2ac16b-d48c-4de7-a44b-73f01cb02347">
</div>


---

## Contributing:

Contributions to improve Hangman in assembly for DOS are welcome! If you'd like to contribute, please follow these guidelines:

- Fork the repository.
- Make your changes.
- Test your changes thoroughly.
- Create a pull request with a clear description of your changes.

Thank you for helping to improve Hangman!

## License:

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact:

For any inquiries or support, please feel free to contact me at [akhyarch307@gmail.com](mailto:akhyarch307@gmail.com).

---
