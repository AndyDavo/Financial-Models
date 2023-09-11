This file explains how the files in this folder support the workflow between Squirrel365 and Openbox.


GEN-MERGE.xlsx

This file contains the MERGE macro (more on this later)

GEN.xlsx

This is the generic excel model

GEN.obx

This is the generic openbox model, the one that you use is actuall embedded in GEN.xlsx, this is just for back up purposes

GEN-SQR.xlsx

This is the file that you used to export to from SQRL when you have made changes to the dashboard files in SQRL, you then run the merge macro, which merges the changes made to the SQRL sheets back into GEN.xlsx

SQR.sqrl

This is the generic squirrel file


Workflow

You open the GEN.xlsx file, goto open box and hit Update

This opens the .obx file embeeded in the metadata of GEN.xlsx (it does not open GEN.obx - as above this is for back up)

You make some model changes then rebuild your workbook which recreates GEN.xlsx

(at the moment there is a defect so you need to rebuild as GEN-1.xlsx, then replace GEN.xlsx with it)

You then upload this to SQRL you made some changes in SQRL including to the dashbboard files.

You export the spreadsheet back out to GEN-SQR so you can do some more work on them model

Unfortuntaely there is a defect in SQRL which means it strips out the .obx meta data when you export, which means you can't update in OpenBox.

So instead we merge the changed dashbboard files from GEN-SQRxlsx replacing thos in GEN.xlsx using the MERGE macro

To run MERGE we close all the books except DASH.xlsx, then rund the MERGE macro from the Developer menu option.

You can then open GEN.xlsx, goto the openbox menu item, hit update and your changes will be imported into the openbox model


REMEMBER

you need to configure the linkinputs function in GEN-MERGE to only link up the input cells inInpC that you want linking

Changes to dashboard only ever get made in SQRL and exported. All other changes are made in OpenBox

Squirrel can't handle spills from dynamic arrays, so if you use a named range it going to bring all the contents back as an array into one cell - this is bad so don't use them



TODO

possible delete GEN-SQR after each MERGE

I3:68 InputBindings
K14:79 inpC



