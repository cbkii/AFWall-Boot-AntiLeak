.class public final Lcom/twofortyfouram/locale/Intent;
.super Ljava/lang/Object;
.source "Intent.java"


# static fields
.field public static final ACTION_EDIT_CONDITION:Ljava/lang/String; = "com.twofortyfouram.locale.intent.action.EDIT_CONDITION"

.field public static final ACTION_EDIT_SETTING:Ljava/lang/String; = "com.twofortyfouram.locale.intent.action.EDIT_SETTING"

.field public static final ACTION_FIRE_SETTING:Ljava/lang/String; = "com.twofortyfouram.locale.intent.action.FIRE_SETTING"

.field public static final ACTION_QUERY_CONDITION:Ljava/lang/String; = "com.twofortyfouram.locale.intent.action.QUERY_CONDITION"

.field public static final ACTION_REQUEST_QUERY:Ljava/lang/String; = "com.twofortyfouram.locale.intent.action.REQUEST_QUERY"

.field public static final EXTRA_ACTIVITY:Ljava/lang/String; = "com.twofortyfouram.locale.intent.extra.ACTIVITY"

.field public static final EXTRA_BUNDLE:Ljava/lang/String; = "com.twofortyfouram.locale.intent.extra.BUNDLE"

.field public static final EXTRA_STRING_BLURB:Ljava/lang/String; = "com.twofortyfouram.locale.intent.extra.BLURB"

.field public static final EXTRA_STRING_BREADCRUMB:Ljava/lang/String; = "com.twofortyfouram.locale.intent.extra.BREADCRUMB"

.field public static final RESULT_CONDITION_SATISFIED:I = 0x10

.field public static final RESULT_CONDITION_UNKNOWN:I = 0x12

.field public static final RESULT_CONDITION_UNSATISFIED:I = 0x11


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
