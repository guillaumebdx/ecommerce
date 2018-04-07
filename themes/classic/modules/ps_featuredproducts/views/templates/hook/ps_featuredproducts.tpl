{**
 * 2007-2018 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2018 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
 {* added by Guillaume HARARI *}
 {* detect if is mobile to choose to display subcategories menu *}
{assign var=context value=Context::getContext()}
{if $context->isMobile() === false}
<div class="flex">
<section class="leftHome">
  <a href="https://harari.io/gelcom/ecommerce/contact-us" class="hoverCard">
    <div class="card">
      <span class="devis">Demande de devis</span>
      <span class="env"><i class="far fa-envelope"></i></span>
      <span class="answer">Réponse sous 24h</span>
    </div>
  </a>

    <div class="card">
      <span class="devis">Satisfaction Client</span>
      <span class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
      <i class="fas fa-star-half"></i></span>
      <span class="answer">En moyenne 9 clients sur 10 nous recommandent !</span>
    </div>


    <div class="card">
      <span class="devis">Recherche par marque</span>
      <div class="flex brands">
        <a href="http://harari.io/gelcom/ecommerce/74_acer"><img src ="http://cremeriedeparis.com/acer/acer-pop-up-store-99.jpg" class="iconBrand" alt="Acer"></a>
        <a href="http://harari.io/gelcom/ecommerce/66_brother"><img src ="https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/062014/brother.png?itok=WBRdGqtL
        http://cdn.secouchermoinsbete.fr/medias/images/cisco.jpg" class="iconBrand" alt="brother"></a>
        <a href="http://harari.io/gelcom/ecommerce/7_dell"><img src ="http://brand.delltechnologies.com/wp-content/uploads/dell-logo-full-width-image01-r4.jpg" class="iconBrand" alt="Dell"></a>
        <a href="http://harari.io/gelcom/ecommerce/51_hp"><img src ="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/HP_logo_2012.svg/100px-HP_logo_2012.svg.png" class="iconBrand" alt="HP"></a>
  
      </div>
      <a href="http://harari.io/gelcom/ecommerce/brands" class="answer">Voir toutes les marques</a>
    </div>




</section>
{/if}

<section class="featured-products clearfix">
  <h2 class="h2 products-section-title text-uppercase">
    {l s='Popular Products' d='Shop.Theme.Catalog'}
  </h2>
  <div class="products">
    {foreach from=$products item="product"}
      {include file="catalog/_partials/miniatures/product.tpl" product=$product}
    {/foreach}
  </div>
  <a class="all-product-link float-xs-left float-md-right h4" href="{$allProductsLink}">
    {l s='All products' d='Shop.Theme.Catalog'}<i class="material-icons">&#xE315;</i>
  </a>
</section>
{if $context->isMobile() === false}
</div>
{/if}
<script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>