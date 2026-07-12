.class public Ldev/ukanth/ufirewall/activity/CustomScriptActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CustomScriptActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private script:Lcom/google/android/material/textfield/TextInputEditText;

.field private script2:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method static bridge synthetic -$$Nest$mresultOk(Ldev/ukanth/ufirewall/activity/CustomScriptActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->resultOk()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initTheme()V
    .locals 3

    .line 87
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "LHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 95
    :pswitch_0
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightHighContrastTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->setTheme(I)V

    goto :goto_1

    .line 92
    :pswitch_1
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->setTheme(I)V

    goto :goto_1

    .line 89
    :pswitch_2
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppDarkTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->setTheme(I)V

    goto :goto_1

    .line 98
    :pswitch_3
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppBlackTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->setTheme(I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x44 -> :sswitch_2
        0x4c -> :sswitch_1
        0x12647 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resultOk()V
    .locals 3

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dev.ukanth.ufirewall.intent.action.CUSTOM_SCRIPT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->script:Lcom/google/android/material/textfield/TextInputEditText;

    .line 118
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dev.ukanth.ufirewall.intent.extra.SCRIPT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->script2:Lcom/google/android/material/textfield/TextInputEditText;

    .line 119
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dev.ukanth.ufirewall.intent.extra.SCRIPT2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 120
    invoke-virtual {p0, v1, v0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->setResult(ILandroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 136
    sget-object v0, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->script:Lcom/google/android/material/textfield/TextInputEditText;

    .line 137
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomScript"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->script2:Lcom/google/android/material/textfield/TextInputEditText;

    .line 138
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomScript2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Ldev/ukanth/ufirewall/R$string;->unsaved_changes:I

    .line 144
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->unsaved_changes_message:I

    .line 145
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->apply:I

    .line 146
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->discard:I

    .line 147
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/CustomScriptActivity$2;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity$2;-><init>(Ldev/ukanth/ufirewall/activity/CustomScriptActivity;)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/CustomScriptActivity$1;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity$1;-><init>(Ldev/ukanth/ufirewall/activity/CustomScriptActivity;)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Ldev/ukanth/ufirewall/R$id;->customscript_ok:I

    if-ne p1, v0, :cond_0

    .line 127
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->resultOk()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->setResult(I)V

    .line 130
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->initTheme()V

    .line 62
    sget p1, Ldev/ukanth/ufirewall/R$layout;->customscript:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->setContentView(I)V

    .line 64
    sget p1, Ldev/ukanth/ufirewall/R$id;->customscript_ok:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget p1, Ldev/ukanth/ufirewall/R$id;->customscript_cancel:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget p1, Ldev/ukanth/ufirewall/R$id;->customscript_link:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 68
    sget-object p1, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 69
    sget v0, Ldev/ukanth/ufirewall/R$id;->customscript:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->script:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "CustomScript"

    const-string v2, ""

    .line 70
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget v0, Ldev/ukanth/ufirewall/R$id;->customscript2:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->script2:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "CustomScript2"

    .line 72
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget p1, Ldev/ukanth/ufirewall/R$string;->set_custom_script:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->setTitle(I)V

    .line 76
    sget p1, Ldev/ukanth/ufirewall/R$id;->custom_toolbar:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 77
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 79
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 110
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 107
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
