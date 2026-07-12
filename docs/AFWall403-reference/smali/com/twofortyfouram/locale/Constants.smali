.class final Lcom/twofortyfouram/locale/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field static final LOCALE_PACKAGE:Ljava/lang/String; = "com.twofortyfouram.locale"

.field static final LOG_TAG:Ljava/lang/String; = "LocaleApiLibrary"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
