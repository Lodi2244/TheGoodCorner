# TheGoodCorner

TheGoodCorner is a commercial adverts marketplace where users can post offers of stuff they sell.

### User stories (Well, kind of)

As a visitor I can :

- Browse and search offers
- Register/login

As a user I can :

- Do all the visitor's actions

- Post/edit/delete (my) offer(s)
  - Upload multiples images
  - Set a title/description/price/category
- Send email to other users via their offers
  - Email is sent through a form on the website
- Add/delete an offer to/on my wishlist



### Technical specs (Cuz, otherwise it would be too easy)

- Images should be uploaded to an AWS S3 bucket through ActiveStorage
- Images should be resized to a fixed width (It's your job to define the size, depending on your frontend)
- Search can be made by : Text, Categories, Price, Date or a combination of any of theses
- On the offer page I should be able to see : Pictures, Title, Description, Price,  How long ago the offer was posted and a way to contact the owner.
- Offers should be deleted automatically after 30 days
- Emails should be sent via Sendgrid
- Emails should be delivered asynchronously via Sidekiq
- An offer owner can be contacted ONLY via a contact form, this will send him an email with the informations to contact the buyer
