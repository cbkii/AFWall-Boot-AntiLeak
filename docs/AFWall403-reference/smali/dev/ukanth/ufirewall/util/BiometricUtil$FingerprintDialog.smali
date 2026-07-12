.class public Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;
.super Landroid/app/Dialog;
.source "BiometricUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/BiometricUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog$BiometricHandler;
    }
.end annotation


# static fields
.field private static KEY_NAME:Ljava/lang/String; = "Key will be determined at onCreate Event"


# instance fields
.field biometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private cipher:Ljavax/crypto/Cipher;

.field cryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

.field errorText:Landroid/widget/TextView;

.field failureCallback:Ldev/ukanth/ufirewall/util/BiometricUtil$OnFingerprintFailure;

.field helper:Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog$BiometricHandler;

.field isNotFirstWindowFocus:Z

.field private keyStore:Ljava/security/KeyStore;

.field keyguardManager:Landroid/app/KeyguardManager;

.field successCallback:Ldev/ukanth/ufirewall/util/BiometricUtil$OnFingerprintSuccess;


# direct methods
.method static bridge synthetic -$$Nest$mtriggerSuccess(Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->triggerSuccess()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->isNotFirstWindowFocus:Z

    .line 101
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->keyguardManager:Landroid/app/KeyguardManager;

    .line 102
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "biometric"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object p1

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->biometricManager:Landroid/hardware/biometrics/BiometricManager;

    return-void
.end method

.method private cipherInit()Z
    .locals 3

    :try_start_0
    const-string v0, "AES/CBC/PKCS7Padding"

    .line 291
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->keyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    .line 298
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->keyStore:Ljava/security/KeyStore;

    sget-object v2, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->KEY_NAME:Ljava/lang/String;

    .line 299
    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    .line 301
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

    .line 306
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

    .line 293
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get Cipher"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private generateKey()V
    .locals 7

    const-string v0, "AfWall-BiometricUtil"

    const-string v1, "AndroidKeyStore"

    .line 255
    :try_start_0
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->keyStore:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 257
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

    .line 263
    invoke-static {v2, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    iget-object v2, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->keyStore:Ljava/security/KeyStore;

    const/4 v3, 0x0

    .line 270
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 271
    invoke-static {}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$2()V

    sget-object v2, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->KEY_NAME:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "CBC"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 275
    invoke-static {v2, v4}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;[Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 276
    invoke-static {v2, v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "PKCS7Padding"

    aput-object v4, v3, v6

    .line 277
    invoke-static {v2, v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/security/keystore/KeyGenParameterSpec$Builder;[Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 279
    invoke-static {v2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 280
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

    .line 284
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

    .line 265
    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get KeyGenerator instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private triggerSuccess()V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->successCallback:Ldev/ukanth/ufirewall/util/BiometricUtil$OnFingerprintSuccess;

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Ldev/ukanth/ufirewall/util/BiometricUtil$OnFingerprintSuccess;->then()V

    .line 247
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->dismiss()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 153
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->failureCallback:Ldev/ukanth/ufirewall/util/BiometricUtil$OnFingerprintFailure;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Ldev/ukanth/ufirewall/util/BiometricUtil$OnFingerprintFailure;->then()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->setCancelable(Z)V

    .line 110
    sget p1, Ldev/ukanth/ufirewall/R$layout;->fingerprint:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->setContentView(I)V

    .line 111
    sget p1, Ldev/ukanth/ufirewall/R$string;->fingerprint_required:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->setTitle(I)V

    .line 113
    sget p1, Ldev/ukanth/ufirewall/R$id;->fingerprintErrorText:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->errorText:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/BiometricUtil;->GetKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->KEY_NAME:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->setFullscreenDialog()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 146
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 148
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->startReadFingerTip()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->isNotFirstWindowFocus:Z

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->startReadFingerTip()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->isNotFirstWindowFocus:Z

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->stopReadFingerTip()V

    :goto_0
    return-void
.end method

.method setFullscreenDialog()V
    .locals 3

    .line 126
    :try_start_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 128
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 129
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 131
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 133
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 134
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 135
    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 136
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AfWall-BiometricUtil"

    .line 140
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setOnFingerprintFailureListener(Ldev/ukanth/ufirewall/util/BiometricUtil$OnFingerprintFailure;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->failureCallback:Ldev/ukanth/ufirewall/util/BiometricUtil$OnFingerprintFailure;

    return-void
.end method

.method public setOnFingerprintSuccess(Ldev/ukanth/ufirewall/util/BiometricUtil$OnFingerprintSuccess;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->successCallback:Ldev/ukanth/ufirewall/util/BiometricUtil$OnFingerprintSuccess;

    return-void
.end method

.method startReadFingerTip()V
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->biometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 200
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/biometrics/BiometricManager;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->errorText:Landroid/widget/TextView;

    .line 206
    sget v1, Ldev/ukanth/ufirewall/R$string;->device_with_no_fingerprint_sensor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->errorText:Landroid/widget/TextView;

    .line 210
    sget v1, Ldev/ukanth/ufirewall/R$string;->fingerprint_permission_manifest_missing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->biometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 213
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/biometrics/BiometricManager;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->errorText:Landroid/widget/TextView;

    .line 214
    sget v1, Ldev/ukanth/ufirewall/R$string;->register_at_least_one_fingerprint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->keyguardManager:Landroid/app/KeyguardManager;

    .line 217
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->errorText:Landroid/widget/TextView;

    .line 218
    sget v1, Ldev/ukanth/ufirewall/R$string;->lock_screen_not_enabled:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 220
    :cond_3
    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->generateKey()V

    .line 221
    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->cipherInit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    invoke-static {}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->cipher:Ljavax/crypto/Cipher;

    invoke-static {v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljavax/crypto/Cipher;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->cryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->helper:Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog$BiometricHandler;

    if-nez v0, :cond_4

    .line 224
    new-instance v0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog$BiometricHandler;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog$BiometricHandler;-><init>(Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->helper:Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog$BiometricHandler;

    :cond_4
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->helper:Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog$BiometricHandler;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->biometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->cryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 226
    invoke-static {v0, v1, v2}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog$BiometricHandler;->-$$Nest$mstartAuth(Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog$BiometricHandler;Landroid/hardware/biometrics/BiometricManager;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)V

    :cond_5
    :goto_0
    return-void
.end method

.method stopReadFingerTip()V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->helper:Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog$BiometricHandler;

    if-eqz v0, :cond_0

    .line 239
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog$BiometricHandler;->-$$Nest$mstopAuth(Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog$BiometricHandler;)V

    :cond_0
    return-void
.end method
