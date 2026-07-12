.class public final Lcom/twofortyfouram/locale/BreadCrumber;
.super Ljava/lang/Object;
.source "BreadCrumber.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateBreadcrumb(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    if-eqz p0, :cond_3

    const-string v0, ""

    const-string v1, "LocaleApiLibrary"

    if-nez p2, :cond_0

    :try_start_0
    const-string p0, "currentCrumb cannot be null"

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "intent cannot be null"

    .line 70
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    const-string v2, "com.twofortyfouram.locale.intent.extra.BREADCRUMB"

    .line 77
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 80
    sget v2, Ldev/ukanth/ufirewall/R$string;->twofortyfouram_locale_breadcrumb_format:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget p1, Ldev/ukanth/ufirewall/R$string;->twofortyfouram_locale_breadcrumb_separator:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    return-object p2

    :catch_0
    move-exception p0

    const-string p1, "Encountered error generating breadcrumb"

    .line 86
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
