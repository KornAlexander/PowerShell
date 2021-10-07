#General Variables
$RemovePath = 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh'
$RemovePathCurrentlyExpectedResults = 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\02. Sales Process\Excel Reports\Currently Expected Results'
$Filestoremove = @('*.kpi','*.pbix','*.rdl')
$PortalURL = 'http://dashboard.fanuc.local/ReportServer'

#Variables for source and target folders
$Target_01ManagementProcess_01Finance= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\01. Management Process\01. Finance' 
$Source_01ManagementProcess_01Finance= '/01.%20Management%20Process/01.%20Finance' 
$Target_01ManagementProcess_01Finance_ExcelReports_CustomerService= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\01. Management Process\01. Finance\Excel Reports\Customer Service' 
$Source_01ManagementProcess_01Finance_ExcelReports_CustomerService= '/01.%20Management%20Process/01.%20Finance/Excel%20Reports/Customer%20Service' 
$Target_01ManagementProcess_01Finance_ExcelReports_InvoiceCheck= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\01. Management Process\01. Finance\Excel Reports\Invoice Check' 
$Source_01ManagementProcess_01Finance_ExcelReports_InvoiceCheck= '/01.%20Management%20Process/01.%20Finance/Excel%20Reports/Invoice%20Check' 
$Target_01ManagementProcess_01Finance_ExcelReports_Sales= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\01. Management Process\01. Finance\Excel Reports\Sales' 
$Source_01ManagementProcess_01Finance_ExcelReports_Sales= '/01.%20Management%20Process/01.%20Finance/Excel%20Reports/Sales' 
$Target_01ManagementProcess_03InternalControlandCompliance= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\01. Management Process\03. Internal Control and Compliance' 
$Source_01ManagementProcess_03InternalControlandCompliance= '/01.%20Management%20Process/03.%20Internal%20Control%20and%20Compliance' 
$Target_01ManagementProcess_04BusinessExcellence_JIRA= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\01. Management Process\JIRA' 
$Source_01ManagementProcess_04BusinessExcellence_JIRA= '/01.%20Management%20Process/04.%20Business%20Excellence/JIRA' 
$Target_02SalesProcess_ExcelReports= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\02. Sales Process\Excel Reports' 
$Source_02SalesProcess_ExcelReports= '/02.%20Sales%20Process/Excel%20Reports' 
$Target_02SalesProcess_ExcelReports_CurrentlyExpectedResults= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\02. Sales Process\Excel Reports\Currently Expected Results' 
$Source_02SalesProcess_ExcelReports_CurrentlyExpectedResults= '/02.%20Sales%20Process/Excel%20Reports/Currently%20Expected%20Results' 
$Target_02SalesProcess_ExcelReports_Salesrep= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\02. Sales Process\Excel Reports\Sales rep' 
$Source_02SalesProcess_ExcelReports_Salesrep= '/02.%20Sales%20Process/Excel%20Reports/Sales%20rep' 
$Target_02SalesProcess_FXX_Italy= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\02. Sales Process\FXX_Italy' 
$Source_02SalesProcess_FXX_Italy= '/02.%20Sales%20Process/FXX/Italy' 
$Target_03SupplyChainProcess_ExcelReports_DataMaintenance= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\03. Supply Chain Process\Excel Reports\Data Maintenance' 
$Source_03SupplyChainProcess_ExcelReports_DataMaintenance= '/03.%20Supply%20Chain%20Process/Excel%20Reports/Data%20Maintenance' 
$Target_03SupplyChainProcess_ExcelReports_EEXReporting= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\03. Supply Chain Process\Excel Reports\EEX Reporting' 
$Source_03SupplyChainProcess_ExcelReports_EEXReporting= '/03.%20Supply%20Chain%20Process/Excel%20Reports/EEX%20Reporting' 
$Target_03SupplyChainProcess_ExcelReports_Listprice= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\03. Supply Chain Process\Excel Reports\List price' 
$Source_03SupplyChainProcess_ExcelReports_Listprice= '/03.%20Supply%20Chain%20Process/Excel%20Reports/List%20price' 
$Target_03SupplyChainProcess_ExcelReports_MaterialManagement= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\03. Supply Chain Process\Excel Reports\Material Management' 
$Source_03SupplyChainProcess_ExcelReports_MaterialManagement= '/03.%20Supply%20Chain%20Process/Excel%20Reports/Material%20Management' 
$Target_03SupplyChainProcess_ExcelReports_SalesSupport= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\03. Supply Chain Process\Excel Reports\Sales Support' 
$Source_03SupplyChainProcess_ExcelReports_SalesSupport= '/03.%20Supply%20Chain%20Process/Excel%20Reports/Sales%20Support' 
$Target_03SupplyChainProcess_MaterialManagement= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\03. Supply Chain Process\Material Management' 
$Source_03SupplyChainProcess_MaterialManagement= '/03.%20Supply%20Chain%20Process/Material%20Management' 
$Target_03SupplyChainProcess_PartsMaster= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\03. Supply Chain Process\Parts Master' 
$Source_03SupplyChainProcess_PartsMaster= '/03.%20Supply%20Chain%20Process/Parts%20Master' 
$Target_03SupplyChainProcess_Procurement= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\03. Supply Chain Process\Procurement' 
$Source_03SupplyChainProcess_Procurement= '/03.%20Supply%20Chain%20Process/Procurement' 
$Target_04CustomerServiceProcess_ExcelReports_RepairCenter= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\04. Customer Service Process\Excel Reports\Repair Center' 
$Source_04CustomerServiceProcess_ExcelReports_RepairCenter= '/04.%20Customer%20Service%20Process/Excel%20Reports/Repair%20Center' 
$Target_04CustomerServiceProcess_ExcelReports_Service= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\04. Customer Service Process\Excel Reports\Service' 
$Source_04CustomerServiceProcess_ExcelReports_Service= '/04.%20Customer%20Service%20Process/Excel%20Reports/Service' 
$Target_04CustomerServiceProcess_FXX_Poland= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\04. Customer Service Process\FXX_Poland' 
$Source_04CustomerServiceProcess_FXX_Poland= '/04.%20Customer%20Service%20Process/FXX/Poland' 

$Target_02SalesProcess_ExcelReports_FHQMonthlySalesReporting= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\02. Sales Process\Excel Reports\FHQ Reporting' 
$Source_02SalesProcess_ExcelReports_FHQMonthlySalesReporting= '/02.%20Sales%20Process/Excel%20Reports/FHQ%20Monthly%20Sales%20Reporting' 
$Target_02SalesProcess_FXX_Germany= 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh\02. Sales Process\FXX_Germany' 
$Source_02SalesProcess_FXX_Germany= '/02.%20Sales%20Process/FXX/Germany' 


#clean up the folder
Get-ChildItem -Path $removepath -File -Recurse | Remove-Item -Verbose

#download items
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_01ManagementProcess_01Finance -Destination $Target_01ManagementProcess_01Finance
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_01ManagementProcess_01Finance_ExcelReports_CustomerService -Destination $Target_01ManagementProcess_01Finance_ExcelReports_CustomerService
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_01ManagementProcess_01Finance_ExcelReports_InvoiceCheck -Destination $Target_01ManagementProcess_01Finance_ExcelReports_InvoiceCheck
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_01ManagementProcess_01Finance_ExcelReports_Sales -Destination $Target_01ManagementProcess_01Finance_ExcelReports_Sales
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_01ManagementProcess_03InternalControlandCompliance -Destination $Target_01ManagementProcess_03InternalControlandCompliance
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_01ManagementProcess_04BusinessExcellence_JIRA -Destination $Target_01ManagementProcess_04BusinessExcellence_JIRA
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_02SalesProcess_ExcelReports -Destination $Target_02SalesProcess_ExcelReports
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_02SalesProcess_ExcelReports_CurrentlyExpectedResults -Destination $Target_02SalesProcess_ExcelReports_CurrentlyExpectedResults
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_02SalesProcess_ExcelReports_Salesrep -Destination $Target_02SalesProcess_ExcelReports_Salesrep
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_02SalesProcess_FXX_Italy -Destination $Target_02SalesProcess_FXX_Italy
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_02SalesProcess_FXX_Germany -Destination $Target_02SalesProcess_FXX_Germany
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_03SupplyChainProcess_ExcelReports_DataMaintenance -Destination $Target_03SupplyChainProcess_ExcelReports_DataMaintenance
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_03SupplyChainProcess_ExcelReports_EEXReporting -Destination $Target_03SupplyChainProcess_ExcelReports_EEXReporting
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_03SupplyChainProcess_ExcelReports_Listprice -Destination $Target_03SupplyChainProcess_ExcelReports_Listprice
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_03SupplyChainProcess_ExcelReports_MaterialManagement -Destination $Target_03SupplyChainProcess_ExcelReports_MaterialManagement
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_03SupplyChainProcess_ExcelReports_SalesSupport -Destination $Target_03SupplyChainProcess_ExcelReports_SalesSupport
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_03SupplyChainProcess_MaterialManagement -Destination $Target_03SupplyChainProcess_MaterialManagement
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_03SupplyChainProcess_PartsMaster -Destination $Target_03SupplyChainProcess_PartsMaster
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_03SupplyChainProcess_Procurement -Destination $Target_03SupplyChainProcess_Procurement
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_04CustomerServiceProcess_ExcelReports_RepairCenter -Destination $Target_04CustomerServiceProcess_ExcelReports_RepairCenter
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_04CustomerServiceProcess_ExcelReports_Service -Destination $Target_04CustomerServiceProcess_ExcelReports_Service
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_04CustomerServiceProcess_FXX_Poland -Destination $Target_04CustomerServiceProcess_FXX_Poland
Out-RsRestFolderContent -ReportPortalUri $PortalURL -RsFolder $Source_02SalesProcess_ExcelReports_FHQMonthlySalesReporting -Destination $Target_02SalesProcess_ExcelReports_FHQMonthlySalesReporting


#remove non-excel
Get-ChildItem -Path $removepath -File -Recurse -Include ($Filestoremove) | Remove-Item -Verbose

#remove currently expected results
Get-ChildItem -Path $removepath -File -Recurse -Include '*Currently Expected Results.xlsm' | Remove-Item -Verbose
Get-ChildItem -Path $RemovePathCurrentlyExpectedResults -File -Recurse | Remove-Item -Verbose 
