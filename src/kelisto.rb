puts "\n\n ---------------- START ---------------- \n\n"
puts "Nuestros productos: \n\n"

#Definición de cada producto
producto1  = ['GR1', 'Green Tea   ', 3.11]
producto2  = ['SR1', 'Strawberries', 5.00]
producto3  = ['CF1', 'Coffee      ', 11.23]

#Mostrar en pantalla los productos disponibles
puts "Código            Nombre              Precio \n\n"
for i in [producto1, producto2, producto3]
    print("#{i[0]}               ")
    print("#{i[1]}        ")
    print("£#{i[2]}\n")
end

#Preguntas para obtener cantidades de cada producto
puts "\n\n¿Cuántos productos desea de #{producto1[1].strip()}?"
cantidad1 = gets.chomp.to_i
puts "\n¿Cuántos productos desea de #{producto2[1].strip()}?"
cantidad2 = gets.chomp.to_i
puts "\n¿Cuántos productos desea de #{producto3[1].strip()}?\n\n"
cantidad3 = gets.chomp.to_i


#Precio total sin descuento
#precioTotalSinDescuento = producto1[2]*cantidad1 + producto2[2]*cantidad2 + producto3[2]*cantidad3
#puts "El precio total sin descuento = £#{precioTotalSinDescuento}"

#Se aplican los descuentos

def hacerDescuento(cantidad1, cantidad2, cantidad3, producto1, producto2, producto3)
    # A partir de 3 fresas cambia su precio
    if cantidad2 >= 3
        producto2[2] = 4.5
    end

    # Té verde compra 1 y obtiene 1 gratis
    if cantidad1 % 2 == 0
        cantidad1 = cantidad1/2
    else
        cantidad1 = cantidad1/2 + 1
    end

    precioTotalDescuento = producto1[2]*cantidad1 + producto2[2]*cantidad2 + producto3[2]*cantidad3
    precioTotalDescuentoRound = precioTotalDescuento.round(2)

    #Mostrar ticket de compra
    puts "\n\n ---------------- TICKET DE COMPRA ---------------- \n\n"
    puts "Basket: "
    puts "#{cantidad1} * #{producto1[0]}"
    puts "#{cantidad2} * #{producto2[0]}"
    puts "#{cantidad3} * #{producto3[0]}"
    puts "\nTotal price with discounts: £#{precioTotalDescuentoRound}"
end

hacerDescuento(cantidad1, cantidad2, cantidad3, producto1, producto2, producto3)

