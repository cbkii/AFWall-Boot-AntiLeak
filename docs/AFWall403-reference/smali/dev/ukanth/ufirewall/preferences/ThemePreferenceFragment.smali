.class public Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "ThemePreferenceFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->ctx:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget p1, Ldev/ukanth/ufirewall/R$xml;->theme_preference:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 43
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 45
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 36
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->ctx:Landroid/content/Context;

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->ctx:Landroid/content/Context;

    :cond_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->ctx:Landroid/content/Context;

    if-eqz p1, :cond_b

    const-string p1, "theme"

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 57
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const-string v1, "D"

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "LHC"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string p2, "L"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string p2, "B"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->ctx:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->ctx:Landroid/content/Context;

    .line 73
    sget p2, Ldev/ukanth/ufirewall/R$string;->donate_only:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 74
    invoke-static {v1}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 71
    :cond_6
    :goto_1
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getInstance()Ldev/ukanth/ufirewall/util/G;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$style;->AppLightHighContrastTheme:I

    invoke-virtual {p1, p2}, Ldev/ukanth/ufirewall/util/G;->setTheme(I)V

    goto :goto_4

    :pswitch_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->ctx:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->ctx:Landroid/content/Context;

    .line 65
    sget p2, Ldev/ukanth/ufirewall/R$string;->donate_only:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 66
    invoke-static {v1}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 63
    :cond_8
    :goto_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getInstance()Ldev/ukanth/ufirewall/util/G;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$style;->AppLightTheme:I

    invoke-virtual {p1, p2}, Ldev/ukanth/ufirewall/util/G;->setTheme(I)V

    goto :goto_4

    .line 59
    :pswitch_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getInstance()Ldev/ukanth/ufirewall/util/G;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$style;->AppDarkTheme:I

    invoke-virtual {p1, p2}, Ldev/ukanth/ufirewall/util/G;->setTheme(I)V

    goto :goto_4

    :pswitch_3
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->ctx:Landroid/content/Context;

    .line 78
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;->ctx:Landroid/content/Context;

    .line 81
    sget p2, Ldev/ukanth/ufirewall/R$string;->donate_only:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 82
    invoke-static {v1}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 79
    :cond_a
    :goto_3
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getInstance()Ldev/ukanth/ufirewall/util/G;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$style;->AppBlackTheme:I

    invoke-virtual {p1, p2}, Ldev/ukanth/ufirewall/util/G;->setTheme(I)V

    :cond_b
    :goto_4
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
