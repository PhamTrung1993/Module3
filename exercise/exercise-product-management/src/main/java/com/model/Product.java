package com.model;

public class Product {
   private int productId;
   private String productName;
   private long productPrice;
   private String productDescribe;
   private String productOrigin;
   private String productImage;

   public Product() {
   }

   public Product(int productId, String productName, long productPrice, String productDescribe, String productOrigin, String productImage) {
      this.productId = productId;
      this.productName = productName;
      this.productPrice = productPrice;
      this.productDescribe = productDescribe;
      this.productOrigin = productOrigin;
      this.productImage = productImage;
   }

   public int getProductId() {
      return productId;
   }

   public void setProductId(int productId) {
      this.productId = productId;
   }

   public String getProductName() {
      return productName;
   }

   public void setProductName(String productName) {
      this.productName = productName;
   }

   public long getProductPrice() {
      return productPrice;
   }

   public void setProductPrice(long productPrice) {
      this.productPrice = productPrice;
   }

   public String getProductDescribe() {
      return productDescribe;
   }

   public void setProductDescribe(String productDescribe) {
      this.productDescribe = productDescribe;
   }

   public String getProductOrigin() {
      return productOrigin;
   }

   public void setProductOrigin(String productOrigin) {
      this.productOrigin = productOrigin;
   }

   public String getProductImage() {
      return productImage;
   }

   public void setProductImage(String productImage) {
      this.productImage = productImage;
   }
}
