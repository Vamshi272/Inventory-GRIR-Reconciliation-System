-- GR/IR Reconciliation Query
-- Simulates ERP inventory clearing logic

SELECT 
    po.PO_ID,
    po.Vendor,
    po.Material,
    po.Ordered_Qty,
    gr.Received_Qty,
    inv.Invoice_Qty,
    
    -- Quantity Variances
    (po.Ordered_Qty - gr.Received_Qty) AS PO_GR_Variance,
    (gr.Received_Qty - inv.Invoice_Qty) AS GR_IR_Qty_Variance,
    
    -- Financial Variance
    (gr.Received_Qty * po.PO_Price) -
    (inv.Invoice_Qty * inv.Invoice_Price) AS Value_Variance
    
FROM purchase_orders po
LEFT JOIN goods_receipt gr ON po.PO_ID = gr.PO_ID
LEFT JOIN invoices inv ON po.PO_ID = inv.PO_ID;
