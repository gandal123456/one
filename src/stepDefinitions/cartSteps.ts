import {Given, When , Then } from "@cucumber/cucumber";
import { page } from "../hooks/hooks";
import { CartPage } from "../pages/cartPage";

 let cart:CartPage;

When('user click on Add to cart as for Sauce Labs Backpack', async function () 
{
        cart=new CartPage(page);

        await cart.clickAdd();
});

When('user click on the cart icon', async function ()
 {
     await cart.clickIcon();
});

Then('product added in the cart', async function ()
 {
     await cart.verifyCart();
 
});

When('user click on remove', async function () 
{
     await cart.clickRemove();
});

Then('the product removed from the cart', async function ()
 {
      await cart.verifyCartEmpty(); 
});
