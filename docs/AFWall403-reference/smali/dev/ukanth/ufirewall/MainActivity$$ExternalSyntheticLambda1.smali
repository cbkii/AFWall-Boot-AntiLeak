.class public final synthetic Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/afollestad/materialdialogs/MaterialDialog;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iput-object p2, p0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->lambda$copyOldExportedDataAsync$6(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Runnable;)V

    return-void
.end method
