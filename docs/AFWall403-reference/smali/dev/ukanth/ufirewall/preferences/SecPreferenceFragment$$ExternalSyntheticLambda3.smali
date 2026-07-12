.class public final synthetic Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintFailure;


# instance fields
.field public final synthetic f$0:Landroid/preference/ListPreference;

.field public final synthetic f$1:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/preference/ListPreference;Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda3;->f$0:Landroid/preference/ListPreference;

    iput-object p2, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda3;->f$1:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    return-void
.end method


# virtual methods
.method public final then()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda3;->f$0:Landroid/preference/ListPreference;

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda3;->f$1:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->lambda$confirmResetPasswords$1(Landroid/preference/ListPreference;Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;)V

    return-void
.end method
