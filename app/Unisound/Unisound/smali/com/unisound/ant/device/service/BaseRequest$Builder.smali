.class public Lcom/unisound/ant/device/service/BaseRequest$Builder;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/service/BaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private header:Lcom/unisound/ant/device/service/MessageHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lcom/unisound/ant/device/service/BaseRequest$Builder;, "Lcom/unisound/ant/device/service/BaseRequest$Builder<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unisound/ant/device/service/BaseRequest;
    .locals 3

    .prologue
    .line 58
    .local p0, "this":Lcom/unisound/ant/device/service/BaseRequest$Builder;, "Lcom/unisound/ant/device/service/BaseRequest$Builder<TE;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/service/BaseRequest$Builder;->header:Lcom/unisound/ant/device/service/MessageHeader;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "header may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    new-instance v0, Lcom/unisound/ant/device/service/BaseRequest;

    iget-object v1, p0, Lcom/unisound/ant/device/service/BaseRequest$Builder;->header:Lcom/unisound/ant/device/service/MessageHeader;

    iget-object v2, p0, Lcom/unisound/ant/device/service/BaseRequest$Builder;->data:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/unisound/ant/device/service/BaseRequest;-><init>(Lcom/unisound/ant/device/service/MessageHeader;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)Lcom/unisound/ant/device/service/BaseRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/unisound/ant/device/service/BaseRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/unisound/ant/device/service/BaseRequest$Builder;, "Lcom/unisound/ant/device/service/BaseRequest$Builder<TE;>;"
    .local p1, "data":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lcom/unisound/ant/device/service/BaseRequest$Builder;->data:Ljava/lang/Object;

    .line 54
    return-object p0
.end method

.method public setRequestHeader(Lcom/unisound/ant/device/service/MessageHeader;)Lcom/unisound/ant/device/service/BaseRequest$Builder;
    .locals 0
    .param p1, "header"    # Lcom/unisound/ant/device/service/MessageHeader;

    .prologue
    .line 48
    .local p0, "this":Lcom/unisound/ant/device/service/BaseRequest$Builder;, "Lcom/unisound/ant/device/service/BaseRequest$Builder<TE;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/service/BaseRequest$Builder;->header:Lcom/unisound/ant/device/service/MessageHeader;

    .line 49
    return-object p0
.end method
