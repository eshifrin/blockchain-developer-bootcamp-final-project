# NFT Collateralized Loan Marketplace

## Proposal: Give NFT owners liquidity backed by their assets.  Give Lenders an opportunity to earn interest

#### NFT Owner (Borrower) flow:
- Place NFT to receive loan offers (revokable)
- See available offers
- Choose loan.  Lock NFT and receive funds.
- See NFTs on loan
- Pay back loan by specific date (optional to pay back earlier) and receive NFT

Lender flow:
- See available NFTs for loan offers
- Offer due date, loan amount, and payback amount (revokable if not accepted)
- See outstanding loans
- Receive payback amount or NFT by due date

Implementation (rough):
- Smart contract to store available NFTs and loan offers
- Borrower accepting an offer: NFT is transferred to Externally Owned account associated with Smart contract account, funds transferred to borrower
- When borrower pays back the full loan amount to smart contract the NFT is marked as available for release, and the loan amount is marked as available for transfer.  The relevant parties then need to initiate the transfer of funds/nft back to their own accounts 
- Scheduler - e.g. [ethereum-alarm-clock](https://github.com/ethereum-alarm-clock/ethereum-alarm-clock)? - checks regularly to see if any loans have been lapsed: if so NFT is available to be claimed by Lender