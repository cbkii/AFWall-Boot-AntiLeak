.class public Ldev/ukanth/ufirewall/activity/CustomRulesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CustomRulesActivity.java"


# direct methods
.method public static synthetic $r8$lambda$_at6fFtMXA3ozLyB2qJ5XhogrDM(Ldev/ukanth/ufirewall/activity/CustomRulesActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->lambda$onCreate$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public dpToPixels(I)I
    .locals 2

    .line 98
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 99
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "\n"

    .line 26
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Ldev/ukanth/ufirewall/R$layout;->activity_custom_rules:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 29
    sget v1, Ldev/ukanth/ufirewall/R$string;->custom_rules:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->setTitle(I)V

    .line 31
    sget v1, Ldev/ukanth/ufirewall/R$id;->activity_custom_rules:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 34
    :try_start_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldev/ukanth/ufirewall/util/CustomRuleOld;->getRules(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/util/Rule;

    .line 36
    new-instance v4, Landroidx/cardview/widget/CardView;

    invoke-direct {v4, p0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x40a00000    # 5.0f

    .line 37
    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->setElevation(F)V

    .line 38
    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 39
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x64

    const/4 v7, -0x2

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x3c

    .line 41
    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->setMinimumHeight(I)V

    .line 44
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xc8

    .line 45
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v6, 0x30

    .line 46
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v6, 0x2

    const/16 v7, 0x28

    const/4 v8, 0x0

    .line 47
    invoke-virtual {v5, v8, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 48
    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v6, Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {v6, p0}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v3}, Ldev/ukanth/ufirewall/util/Rule;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/SwitchCompat;->setTag(Ljava/lang/Object;)V

    .line 53
    new-instance v7, Ldev/ukanth/ufirewall/activity/CustomRulesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/activity/CustomRulesActivity;)V

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    invoke-virtual {v6, v8}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 57
    invoke-virtual {v3}, Ldev/ukanth/ufirewall/util/Rule;->getDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/SwitchCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ldev/ukanth/ufirewall/util/Rule;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3}, Ldev/ukanth/ufirewall/util/Rule;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/SwitchCompat;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 63
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/SwitchCompat;->setTextSize(F)V

    .line 65
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/SwitchCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {v4, v6}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 68
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->setContentView(Landroid/view/View;)V

    .line 76
    sget p1, Ldev/ukanth/ufirewall/R$id;->custom_toolbar_rules:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 77
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 79
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 94
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 91
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/CustomRulesActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
