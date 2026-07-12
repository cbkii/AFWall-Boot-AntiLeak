.class public final synthetic Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/preference/ListPreference;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/preference/ListPreference;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda2;->f$0:Landroid/preference/ListPreference;

    iput-object p2, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda2;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda2;->f$0:Landroid/preference/ListPreference;

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda2;->f$1:[Ljava/lang/String;

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->lambda$setupInitDir$1(Landroid/preference/ListPreference;[Ljava/lang/String;)V

    return-void
.end method
