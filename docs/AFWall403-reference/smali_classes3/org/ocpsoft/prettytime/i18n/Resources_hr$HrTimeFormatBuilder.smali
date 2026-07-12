.class Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;
.super Ljava/lang/Object;
.source "Resources_hr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ocpsoft/prettytime/i18n/Resources_hr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HrTimeFormatBuilder"
.end annotation


# instance fields
.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceKeyPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->names:Ljava/util/List;

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->resourceKeyPrefix:Ljava/lang/String;

    return-void
.end method

.method private addName(ZLjava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;
    .locals 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->names:Ljava/util/List;

    .line 306
    new-instance v1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;-><init>(ZLjava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;
    .locals 2

    const/4 v0, 0x1

    .line 312
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addName(ZLjava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addName(ZLjava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    return-object p1
.end method

.method build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;
    .locals 3

    .line 317
    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->resourceKeyPrefix:Ljava/lang/String;

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->names:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/util/Collection;)V

    return-object v0
.end method
