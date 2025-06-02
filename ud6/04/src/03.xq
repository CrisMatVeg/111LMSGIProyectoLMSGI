(:3. Mostrar el ID de factura como ID de cliente y correo del cliente:)
<clientes>
{
  for $x in collection(facturas)
  return <cliente id="{$x/factura/@id}">{$x/factura/cliente/email/text()}</cliente>
}
</clientes>

