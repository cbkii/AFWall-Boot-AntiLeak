.class Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerprintHandler"
.end annotation


# instance fields
.field cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic this$0:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;


# direct methods
.method static bridge synthetic -$$Nest$mstartAuth(Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->startAuth(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAuth(Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->stopAuth()V

    return-void
.end method

.method constructor <init>(Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->this$0:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    .line 322
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 323
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->cancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method private startAuth(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 7

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->this$0:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    .line 328
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->cancellationSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p0

    .line 331
    invoke-static/range {v1 .. v6}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private stopAuth()V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->cancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->cancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->this$0:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    .line 354
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->startReadFingerTip()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->this$0:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    .line 366
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->fingerprint_authentication_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->update(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->this$0:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->fingerprint_authentication_help:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->update(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->this$0:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    .line 372
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->fingerprint_authentication_successded:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->update(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->this$0:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    .line 378
    iget-object v0, v0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->errorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->this$0:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    .line 381
    iget-object p1, p1, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->errorText:Landroid/widget/TextView;

    iget-object p2, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->this$0:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    invoke-virtual {p2}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$color;->dark_bg:I

    invoke-static {p2, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->this$0:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    .line 382
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->-$$Nest$mtriggerSuccess(Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;)V

    :cond_0
    return-void
.end method
