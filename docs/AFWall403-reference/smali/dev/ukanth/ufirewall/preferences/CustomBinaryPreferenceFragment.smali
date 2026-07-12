.class public Ldev/ukanth/ufirewall/preferences/CustomBinaryPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "CustomBinaryPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 13
    sget p1, Ldev/ukanth/ufirewall/R$xml;->ui_custom_preferences:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/CustomBinaryPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method
