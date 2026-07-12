.class public Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;
.super Landroid/app/Dialog;
.source "FingerprintUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/FingerprintUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;
    }
.end annotation


# static fields
.field private static KEY_NAME:Ljava/lang/String; = "Key will be determined at onCreate Event"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field cryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field errorText:Landroid/widget/TextView;

.field failureCallback:Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintFailure;

.field fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field helper:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;

.field isNotFirstWindowFocus:Z

.field private keyStore:Ljava/security/KeyStore;

.field keyguardManager:Landroid/app/KeyguardManager;

.field successCallback:Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintSuccess;


# direct methods
.method static bridge synthetic -$$Nest$mtriggerSuccess(Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->triggerSuccess()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 95
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->isNotFirstWindowFocus:Z

    .line 98
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->keyguardManager:Landroid/app/KeyguardManager;

    .line 99
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method private cipherInit()Z
    .locals 3

    :try_start_0
    const-string v0, "AES/CBC/PKCS7Padding"

    .line 294
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->keyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->keyStore:Ljava/security/KeyStore;

    sget-object v2, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->KEY_NAME:Ljava/lang/String;

    .line 302
    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    .line 304
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    .line 309
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to init Cipher"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    const/4 v0, 0x0

    return v0

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    .line 296
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get Cipher"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private generateKey()V
    .locals 7

    const-string v0, "AfWall-FingerprintUtil"

    const-string v1, "AndroidKeyStore"

    .line 258
    :try_start_0
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->keyStore:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error(0): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-string v2, "AES"

    .line 266
    invoke-static {v2, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    iget-object v2, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->keyStore:Ljava/security/KeyStore;

    const/4 v3, 0x0

    .line 273
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 274
    invoke-static {}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$2()V

    sget-object v2, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->KEY_NAME:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "CBC"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 278
    invoke-static {v2, v4}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;[Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 279
    invoke-static {v2, v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "PKCS7Padding"

    aput-object v4, v3, v6

    .line 280
    invoke-static {v2, v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/security/keystore/KeyGenParameterSpec$Builder;[Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 282
    invoke-static {v2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v2

    .line 274
    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 283
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    .line 287
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error(1): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    .line 268
    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get KeyGenerator instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private triggerSuccess()V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->successCallback:Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintSuccess;

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintSuccess;->then()V

    .line 250
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->dismiss()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 150
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->failureCallback:Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintFailure;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintFailure;->then()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 106
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->setCancelable(Z)V

    .line 107
    sget p1, Ldev/ukanth/ufirewall/R$layout;->fingerprint:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->setContentView(I)V

    .line 108
    sget p1, Ldev/ukanth/ufirewall/R$string;->fingerprint_required:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->setTitle(I)V

    .line 110
    sget p1, Ldev/ukanth/ufirewall/R$id;->fingerprintErrorText:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->errorText:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/FingerprintUtil;->GetKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->KEY_NAME:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->setFullscreenDialog()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 143
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 145
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->startReadFingerTip()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->isNotFirstWindowFocus:Z

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->startReadFingerTip()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->isNotFirstWindowFocus:Z

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->stopReadFingerTip()V

    :goto_0
    return-void
.end method

.method setFullscreenDialog()V
    .locals 3

    .line 123
    :try_start_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 125
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 126
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 128
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 130
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 131
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 132
    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 133
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AfWall-FingerprintUtil"

    .line 137
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setOnFingerprintFailureListener(Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintFailure;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->failureCallback:Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintFailure;

    return-void
.end method

.method public setOnFingerprintSuccess(Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintSuccess;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->successCallback:Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintSuccess;

    return-void
.end method

.method startReadFingerTip()V
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 197
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->errorText:Landroid/widget/TextView;

    .line 203
    sget v1, Ldev/ukanth/ufirewall/R$string;->device_with_no_fingerprint_sensor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->errorText:Landroid/widget/TextView;

    .line 207
    sget v1, Ldev/ukanth/ufirewall/R$string;->fingerprint_permission_manifest_missing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 210
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/hardware/fingerprint/FingerprintManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->errorText:Landroid/widget/TextView;

    .line 211
    sget v1, Ldev/ukanth/ufirewall/R$string;->register_at_least_one_fingerprint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->keyguardManager:Landroid/app/KeyguardManager;

    .line 214
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->errorText:Landroid/widget/TextView;

    .line 215
    sget v1, Ldev/ukanth/ufirewall/R$string;->lock_screen_not_enabled:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->generateKey()V

    .line 220
    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->cipherInit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    invoke-static {}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$3()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->cipher:Ljavax/crypto/Cipher;

    invoke-static {v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljavax/crypto/Cipher;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->cryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->helper:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;

    if-nez v0, :cond_4

    .line 226
    new-instance v0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;-><init>(Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->helper:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;

    :cond_4
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->helper:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->cryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 229
    invoke-static {v0, v1, v2}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->-$$Nest$mstartAuth(Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    :cond_5
    :goto_0
    return-void
.end method

.method stopReadFingerTip()V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->helper:Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;

    if-eqz v0, :cond_0

    .line 242
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;->-$$Nest$mstopAuth(Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog$FingerprintHandler;)V

    :cond_0
    return-void
.end method
