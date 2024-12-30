# CryptoCurrencies

A simple iOS application that displays a list of crypto assets and allows the user to view detailed information for a selected coin. Built with Swift and SwiftUI.

Features
    •    List of Cryptocurrencies: Shows all available coins (e.g., Bitcoin, Ethereum, etc.) in a scrollable list.
    •    Coin Details Screen: On tapping a coin in the list, navigates to a detail screen showing the coin’s: Name, symbol, description etc.
    •    Asynchronous Data Fetching: Uses network calls to retrieve data from a cryptocurrency API.
    •    Caching / Pagination : Demonstrates basic pagination or caching to handle large lists.


Installation

    • git clone git@github.com:vinayky123/CryptoCurrencies.git
    
Architecure
    
    • This app is implemented by using MVVM Architecure.

Project Structure
    •    Models: Coin.swift, CoinDetail.swift, etc. (Data structures for parsing API responses)
    •    ViewModels: CoinListViewModel, CoinDetailViewModel (Handles data fetching & logic for each screen)
    •    Views:
    •    CoinListView: Renders a list of coins.
    •    CoinDetailView: Shows detailed info of a selected coin.
    •    Network: EndPoint, NetworkManager, CoinDataService, CoinsCache (Optional caching/pagination)
