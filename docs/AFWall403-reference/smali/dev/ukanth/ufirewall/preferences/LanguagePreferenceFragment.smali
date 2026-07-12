.class public Ldev/ukanth/ufirewall/preferences/LanguagePreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "LanguagePreferenceFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static checkBoxPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static checkXposed(Landroid/preference/Preference;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 32
    :cond_0
    check-cast p0, Landroid/preference/CheckBoxPreference;

    sput-object p0, Ldev/ukanth/ufirewall/preferences/LanguagePreferenceFragment;->checkBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Checking Xposed:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isXposedEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AFWall"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ldev/ukanth/ufirewall/preferences/LanguagePreferenceFragment;->checkBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 35
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isXposedEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget p1, Ldev/ukanth/ufirewall/R$xml;->language_preferences:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/LanguagePreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "fixDownloadManagerLeak"

    .line 24
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/LanguagePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/preferences/LanguagePreferenceFragment;->checkXposed(Landroid/preference/Preference;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Ldev/ukanth/ufirewall/preferences/LanguagePreferenceFragment;->checkBoxPreference:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/LanguagePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 49
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 41
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/LanguagePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
