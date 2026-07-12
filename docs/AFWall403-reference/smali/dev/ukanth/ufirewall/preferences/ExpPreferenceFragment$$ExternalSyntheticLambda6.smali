.class public final synthetic Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/preference/CheckBoxPreference;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/preference/CheckBoxPreference;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda6;->f$0:Landroid/preference/CheckBoxPreference;

    iput-boolean p2, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda6;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda6;->f$0:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda6;->f$1:Z

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->lambda$updateLeakCheckbox$7(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method
