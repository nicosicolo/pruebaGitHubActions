module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Test de ejemplo" $ do
    it "El pdepreludat se instaló correctamente" $ do
      doble 1 `shouldBe` 2
  describe "Test de funcion esMayorDeEdad" $ do
    it "Una persona con 19 años es mayor de edad" $ do
      esMayorDeEdad 19 `shouldBe` True
    it "Una persona con 8 años no es mayor de edad" $ do
      esMayorDeEdad 8 `shouldBe` False
  describe "Test de funcion edadPersona" $ do
    it "La edad de ramiro es de 19 años" $ do
      edadPersona ("Ramiro", 19) `shouldBe` 19
  describe "Test de funcion personaMayorDeEdad" $ do
    it "Ramiro es mayor de edad" $ do
      personaMayorDeEdad ("Ramiro", 19) `shouldBe` True

