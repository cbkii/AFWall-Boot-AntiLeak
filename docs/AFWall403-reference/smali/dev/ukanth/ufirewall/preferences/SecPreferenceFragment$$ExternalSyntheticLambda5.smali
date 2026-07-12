.class public final synthetic Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# instance fields
.field public final synthetic f$0:Landroid/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Landroid/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda5;->f$0:Landroid/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda5;->f$0:Landroid/preference/ListPreference;

    invoke-static {v0, p1, p2}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->lambda$showPasswordActivity$0(Landroid/preference/ListPreference;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method
