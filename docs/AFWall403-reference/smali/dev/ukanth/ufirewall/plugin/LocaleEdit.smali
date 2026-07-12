.class public Ldev/ukanth/ufirewall/plugin/LocaleEdit;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LocaleEdit.java"


# instance fields
.field private final CUSTOM_PROFILE_ID:I

.field private mIsCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->mIsCancelled:Z

    const/16 v0, 0x64

    iput v0, p0, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->CUSTOM_PROFILE_ID:I

    return-void
.end method

.method private setupTitleApi11()V
    .locals 4

    .line 176
    :try_start_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 7

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->mIsCancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->setResult(I)V

    goto :goto_1

    .line 217
    :cond_0
    sget v0, Ldev/ukanth/ufirewall/R$id;->radioProfiles:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 218
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 219
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 221
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 223
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v4

    const-string v5, "::"

    const-string v6, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    if-nez v4, :cond_1

    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 225
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/plugin/PluginBundleManager;->generateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 228
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/plugin/PluginBundleManager;->generateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :goto_0
    const-string v0, "com.twofortyfouram.locale.intent.extra.BLURB"

    .line 230
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 231
    invoke-virtual {p0, v0, v3}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->setResult(ILandroid/content/Intent;)V

    .line 233
    :goto_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    .line 31
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Ldev/ukanth/ufirewall/plugin/BundleScrubber;->scrub(Landroid/content/Intent;)Z

    .line 34
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ldev/ukanth/ufirewall/plugin/BundleScrubber;->scrub(Landroid/os/Bundle;)Z

    .line 37
    sget v1, Ldev/ukanth/ufirewall/R$layout;->tasker_profile:I

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->setContentView(I)V

    .line 39
    sget v1, Ldev/ukanth/ufirewall/R$id;->tasker_toolbar:I

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 41
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 45
    sget v3, Ldev/ukanth/ufirewall/R$id;->tasker_enable:I

    invoke-virtual {v0, v3}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 46
    sget v4, Ldev/ukanth/ufirewall/R$id;->tasker_disable:I

    invoke-virtual {v0, v4}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 47
    sget v5, Ldev/ukanth/ufirewall/R$id;->defaultProfile:I

    invoke-virtual {v0, v5}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 49
    sget v6, Ldev/ukanth/ufirewall/R$string;->defaultProfile:I

    invoke-virtual {v0, v6}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 50
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    sget v6, Ldev/ukanth/ufirewall/R$string;->defaultProfile:I

    invoke-virtual {v0, v6}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v6

    const-string v8, "2"

    const-string v9, "1"

    const-string v10, "0"

    const-string v12, "dev.ukanth.ufirewall.plugin.APPLY_PROFILE"

    const-string v14, "::"

    if-nez v6, :cond_c

    .line 55
    sget v6, Ldev/ukanth/ufirewall/R$id;->radioProfiles:I

    invoke-virtual {v0, v6}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    .line 57
    sget v7, Ldev/ukanth/ufirewall/R$id;->profile1:I

    invoke-virtual {v0, v7}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 58
    sget v11, Ldev/ukanth/ufirewall/R$id;->profile2:I

    invoke-virtual {v0, v11}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    .line 59
    sget v15, Ldev/ukanth/ufirewall/R$id;->profile3:I

    invoke-virtual {v0, v15}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RadioButton;

    .line 61
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getAdditionalProfiles()Ljava/util/List;

    move-result-object v17

    .line 65
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v18, 0x64

    const/16 v13, 0x64

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    check-cast v3, Ljava/lang/String;

    move-object/from16 v18, v4

    .line 66
    new-instance v4, Landroid/widget/RadioButton;

    invoke-direct {v4, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    add-int/lit8 v20, v13, 0x1

    .line 67
    invoke-virtual {v4, v13}, Landroid/widget/RadioButton;->setId(I)V

    .line 68
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v6, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    move/from16 v13, v20

    goto :goto_0

    :cond_1
    move-object/from16 v19, v3

    move-object/from16 v18, v4

    .line 72
    sget v3, Ldev/ukanth/ufirewall/R$string;->profile1:I

    invoke-virtual {v0, v3}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "profile1"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    sget v3, Ldev/ukanth/ufirewall/R$string;->profile1:I

    invoke-virtual {v0, v3}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v7, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget v3, Ldev/ukanth/ufirewall/R$string;->profile2:I

    invoke-virtual {v0, v3}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "profile2"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    sget v3, Ldev/ukanth/ufirewall/R$string;->profile2:I

    invoke-virtual {v0, v3}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v11, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget v3, Ldev/ukanth/ufirewall/R$string;->profile3:I

    invoke-virtual {v0, v3}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "profile3"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    sget v1, Ldev/ukanth/ufirewall/R$string;->profile3:I

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v15, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct/range {p0 .. p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->setupTitleApi11()V

    if-nez p1, :cond_13

    .line 82
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 84
    invoke-static {v1}, Ldev/ukanth/ufirewall/plugin/PluginBundleManager;->isBundleValid(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 85
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :cond_5
    if-eqz v1, :cond_13

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    const/16 v16, -0x1

    goto :goto_2

    :pswitch_0
    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x5

    const/16 v16, 0x5

    goto :goto_2

    :pswitch_1
    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x4

    const/16 v16, 0x4

    goto :goto_2

    :pswitch_2
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x3

    const/16 v16, 0x3

    goto :goto_2

    :pswitch_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/16 v16, 0x2

    goto :goto_2

    :pswitch_4
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    const/16 v16, 0x1

    goto :goto_2

    :pswitch_5
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    const/16 v16, 0x0

    :goto_2
    packed-switch v16, :pswitch_data_1

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5e

    .line 111
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_13

    const/4 v2, 0x1

    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_7

    :pswitch_6
    const/4 v2, 0x1

    .line 107
    invoke-virtual {v15, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_7

    :pswitch_7
    const/4 v2, 0x1

    .line 104
    invoke-virtual {v11, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_7

    :pswitch_8
    const/4 v2, 0x1

    .line 101
    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_7

    :pswitch_9
    const/4 v2, 0x1

    .line 98
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_7

    :pswitch_a
    move-object/from16 v4, v18

    const/4 v2, 0x1

    .line 95
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_7

    :pswitch_b
    move-object/from16 v3, v19

    const/4 v2, 0x1

    .line 92
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 121
    :cond_c
    sget v1, Ldev/ukanth/ufirewall/R$id;->radioProfiles:I

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 123
    sget v6, Ldev/ukanth/ufirewall/R$id;->profile1:I

    invoke-virtual {v0, v6}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 124
    sget v7, Ldev/ukanth/ufirewall/R$id;->profile2:I

    invoke-virtual {v0, v7}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 125
    sget v11, Ldev/ukanth/ufirewall/R$id;->profile3:I

    invoke-virtual {v0, v11}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    .line 126
    invoke-virtual {v1, v6}, Landroid/widget/RadioGroup;->removeView(Landroid/view/View;)V

    .line 127
    invoke-virtual {v1, v7}, Landroid/widget/RadioGroup;->removeView(Landroid/view/View;)V

    .line 128
    invoke-virtual {v1, v11}, Landroid/widget/RadioGroup;->removeView(Landroid/view/View;)V

    .line 130
    invoke-static {}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/ukanth/ufirewall/profiles/ProfileData;

    if-eqz v7, :cond_d

    .line 132
    invoke-virtual {v7}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v11

    .line 133
    invoke-virtual {v7}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 134
    new-instance v13, Landroid/widget/RadioButton;

    invoke-direct {v13, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v7}, Ljava/lang/Long;->intValue()I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/widget/RadioButton;->setId(I)V

    .line 136
    invoke-virtual {v13, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v1, v13}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_e
    if-nez p1, :cond_13

    .line 142
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 144
    invoke-static {v1}, Ldev/ukanth/ufirewall/plugin/PluginBundleManager;->isBundleValid(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 145
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 147
    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_4

    :cond_f
    const/4 v2, 0x0

    :goto_4
    if-eqz v1, :cond_13

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_2

    :goto_5
    const/4 v7, -0x1

    goto :goto_6

    :pswitch_c
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_5

    :cond_10
    const/4 v7, 0x2

    goto :goto_6

    :pswitch_d
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_5

    :cond_11
    const/4 v7, 0x1

    goto :goto_6

    :pswitch_e
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_5

    :cond_12
    const/4 v7, 0x0

    :goto_6
    packed-switch v7, :pswitch_data_3

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_13

    const/4 v2, 0x1

    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_7

    :pswitch_f
    const/4 v2, 0x1

    .line 158
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_7

    :pswitch_10
    const/4 v2, 0x1

    .line 155
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_7

    :pswitch_11
    const/4 v2, 0x1

    .line 152
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_13
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 207
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 208
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$menu;->twofortyfouram_locale_help_save_dontsave:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 193
    sget v1, Ldev/ukanth/ufirewall/R$id;->twofortyfouram_locale_menu_save:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    sget v1, Ldev/ukanth/ufirewall/R$id;->twofortyfouram_locale_menu_dontsave:I

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->mIsCancelled:Z

    .line 198
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->finish()V

    return v2

    .line 201
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 194
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/plugin/LocaleEdit;->finish()V

    return v2
.end method

.method protected onPause()V
    .locals 0

    .line 187
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method
