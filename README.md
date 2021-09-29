# NFT Collateralized Loan Marketplace

## Proposal: Give NFT owners liquidity backed by their assets.  Give Lenders an opportunity to earn interest

#### NFT Owner (Borrower) flow:
- Place NFT to receive loan offers (revokable) with desired expiry and loan amount
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

Sample flow:
- Bored Ape Yacht Club (BAYC) NFTs are trading at 40eth floor.  Via the UI, BAYC owner places #235 (illustrative) up for a loan.  Desires 20eth (50% LTV) to be borrowed for 2 months
- Lender offers the loan with a payback of 22eth
- #235 owner accepts 
- #235 is transferred out of the owner's account.  20eth is transferred from Lender to #235 owner
- #235 owner pays back 22eth in 2 months, receives NFT back.  Lender receives 22eth