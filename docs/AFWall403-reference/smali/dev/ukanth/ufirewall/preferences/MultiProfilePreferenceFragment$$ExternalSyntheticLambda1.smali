.class public final synthetic Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;

.field public final synthetic f$1:Landroid/preference/PreferenceCategory;

.field public final synthetic f$2:Landroid/preference/Preference;

.field public final synthetic f$3:Landroid/preference/PreferenceCategory;


# direct methods
.method public synthetic constructor <init>(Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;Landroid/preference/PreferenceCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda1;->f$0:Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;

    iput-object p2, p0, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda1;->f$1:Landroid/preference/PreferenceCategory;

    iput-object p3, p0, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda1;->f$2:Landroid/preference/Preference;

    iput-object p4, p0, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda1;->f$3:Landroid/preference/PreferenceCategory;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda1;->f$0:Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda1;->f$1:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda1;->f$2:Landroid/preference/Preference;

    iget-object v3, p0, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda1;->f$3:Landroid/preference/PreferenceCategory;

    invoke-static {v0, v1, v2, v3, p1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->$r8$lambda$z_GOb8aLe-7fnxi4WiH-m-1FrLc(Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
