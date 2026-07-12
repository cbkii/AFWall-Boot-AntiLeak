.class public final synthetic Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;


# instance fields
.field public final synthetic f$0:Ldev/ukanth/ufirewall/activity/ProfileActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ldev/ukanth/ufirewall/profiles/ProfileData;


# direct methods
.method public synthetic constructor <init>(Ldev/ukanth/ufirewall/activity/ProfileActivity;ILdev/ukanth/ufirewall/profiles/ProfileData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda1;->f$0:Ldev/ukanth/ufirewall/activity/ProfileActivity;

    iput p2, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda1;->f$2:Ldev/ukanth/ufirewall/profiles/ProfileData;

    return-void
.end method


# virtual methods
.method public final onInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda1;->f$0:Ldev/ukanth/ufirewall/activity/ProfileActivity;

    iget v1, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Ldev/ukanth/ufirewall/activity/ProfileActivity$$ExternalSyntheticLambda1;->f$2:Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-static {v0, v1, v2, p1, p2}, Ldev/ukanth/ufirewall/activity/ProfileActivity;->$r8$lambda$_MXbK169DsrgvYPWUyAzbVOcOjI(Ldev/ukanth/ufirewall/activity/ProfileActivity;ILdev/ukanth/ufirewall/profiles/ProfileData;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V

    return-void
.end method
