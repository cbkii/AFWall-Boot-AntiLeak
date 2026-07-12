.class public final Lhaibison/android/lockpattern/Alp;
.super Ljava/lang/Object;
.source "Alp.java"


# static fields
.field public static final LIB_NAME:Ljava/lang/String; = "android-lockpattern"

.field public static final LIB_VERSION_NAME:Ljava/lang/String; = "12.0.0"

.field public static final RELEASE_DATE:Ljava/util/Calendar;

.field public static final TAG:Ljava/lang/String; = "ALP_42447968_12.0.0"

.field public static final UID:Ljava/lang/String; = "a6eedbe5-1cf9-4684-8134-ad4ec9f6a131"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0xb

    const/16 v2, 0x17

    const/16 v3, 0x7e0

    invoke-direct {v0, v3, v1, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lhaibison/android/lockpattern/Alp;->RELEASE_DATE:Ljava/util/Calendar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
