Return-Path: <usb-storage+bncBD6LRVPZ6YGRBBFP6OXQMGQEGY6QWQA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 4274E886483
	for <lists+usb-storage@lfdr.de>; Fri, 22 Mar 2024 01:57:42 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-430d0943db4sf17812911cf.2
        for <lists+usb-storage@lfdr.de>; Thu, 21 Mar 2024 17:57:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711069061; cv=pass;
        d=google.com; s=arc-20160816;
        b=lH0JVwLiLjitvNy3UGHzV64tYmHyeJe51z6fd4ZSu1BrPjohr5k2edcEP4WfB5w6Zz
         d48XY0R6wEo/3A/m4qbXBP1altzA2hSemEqoSCdfjHTqaRjQlxGNfcyN57AmH2CpMRQh
         c6KCLGGzbL5pUEbowxru5llrry5jpQCCTEB2gCzZgfFQXYPciHbZg4OwOHAiOKPwcIAp
         wVIoFYahfvV8hIMrCx+Pw0Di3O6fyE9RD85WUtD5O2BRa1YVG6E+hK7/kGjQkvhM1MYa
         MpdGSkhGtHBXnOaiEG8Biid03sE08ZR6WzqFFlEsiZQ2TEOxcmJRcyqk0UXgbtqbcE+r
         E0jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AttgUVYCDijd3ka8YcXTBMWVjCTwMg+eq5o1Khj6o3o=;
        fh=VEtPNmCafSsqPcE6aFLccjNhgxpaN3+mHNZTmwWyLUM=;
        b=05rzgEUVrrAHQ9CYevdNk6XV24YhpbK5mLC8yYDdLrWqzH+gWoxXO8thNEqyh7P/bv
         8Sdq0wDXmFtlu2/R2mZDJf4ss7EdGUK17B2o8sE0OYvhMt7tpBq8GANhRHhBkvA+dKrB
         7TGWy5uDfE4w5RuqTt78wySlz9WbfjOUSVLneJ5htgsHJUD+sWjABn3THEq6YqWpuRHZ
         oDf/kFWiczCNQLl7TvkIG5cqED53c4FATGSl94hxhAfVEbJ0pHxhWN7wDwx2d6b9dKLM
         2y2xbCmuycahEE9Okw6f/4zueuegxfpyx7/kBNpVCfHRmoti4LSHkANLcIbnKWp5stxl
         v0VQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711069061; x=1711673861; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AttgUVYCDijd3ka8YcXTBMWVjCTwMg+eq5o1Khj6o3o=;
        b=RkaWriI4K1A2Yd8sxY0T0+BobmUekIK9Io1XTxOTqjgULNAyq8kp/RH/Q9zWeKVwWx
         JbOhzH+LzcXHtBjcLUecxvkVAVoP8QauYKXHQup5+Ru5xtoLU7mFDsxYk2urvK1sq3Oo
         1FCL2YZsiIXSlZrBgZ8FGvQRMK/WrYTZn2ASM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711069061; x=1711673861;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AttgUVYCDijd3ka8YcXTBMWVjCTwMg+eq5o1Khj6o3o=;
        b=jL+IUYDQSD7Q3ZyypTdvjAIKmzoqElQUYRzvnnBosZGnaBL2a5QYqX44d/wT6iIF3I
         ER31B7zzjMIqmRgwV33PX7UjgV8Lzc0Shx9Ytybeuxv+9jomvC9SrgS2vOvSbCX2xMvP
         CwzYX7yoDkUc6nV0a4ywtQyA++nj1bGSsQzSuxIU6TJQfPaTn8Mf9KJA3M9UBMqaPVTy
         Tl5bhEQqZOFSyb/WYCqOxFwicZkHOUGnAY87rW87UVNquVGaccTBvG1zjiwmTlN/K84W
         /KyJggUOO1mVvm64k+h1PgDehD+2FLnCslplYPNDK7MSS236xjk8x2a7MwKwm6IGEZ7u
         3rIw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX7Pf3GnHOadULtCLKHdEfJPjtzvz5LcHYWRkUyjrCDyOzh3bZ3XVQUvK+hKF56qiYZPzk3CRQ+b44J36ODS9TNed7q5KLOKJM3
X-Gm-Message-State: AOJu0Yw/p5kfywydyit8unrjUOPRkxkxu49LcRM3JkKyMQ4oIwHU5Ojx
	BnmNOyLSvy2gdSam9m8OMQnwJyNTleRr7giTbukjl88i65I7Azhi1zSn+T+ZedA=
X-Google-Smtp-Source: AGHT+IFO//zxmB8PLXF1W0xKuNyMFUkd7dl1wz+M8wtEs4srrJLHVTjuSxLKFgyi7q6Mla0IiFkZpg==
X-Received: by 2002:ac8:5e0a:0:b0:42e:b777:f28b with SMTP id h10-20020ac85e0a000000b0042eb777f28bmr922559qtx.12.1711069061012;
        Thu, 21 Mar 2024 17:57:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:ce:b0:431:280c:f8eb with SMTP id
 p14-20020a05622a00ce00b00431280cf8ebls1206707qtw.1.-pod-prod-05-us; Thu, 21
 Mar 2024 17:57:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXAt1znpumSpLh6OK0aui1UjX9Qunf9/b/uhlnD/vpnDan/z1FZW8ssST7Sa/SosXD/nldFnHAy0+zL4r9QKJQNgOzkAYRCfibwLm/i7OAasEnhon8=
X-Received: by 2002:a05:620a:1198:b0:788:1bda:8aa3 with SMTP id b24-20020a05620a119800b007881bda8aa3mr906201qkk.19.1711069059272;
        Thu, 21 Mar 2024 17:57:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711069059; cv=none;
        d=google.com; s=arc-20160816;
        b=qxQLuoxyP9kiKh8YEFFk79MQyBYaTiRAEBLI0C/yOhrxYnyqBFMVnfQTNDPMxOcUoJ
         VIkhVh3H7CGU7ruEdu/0b7/WKsZUz17SluyAll+CSYunwEzVvefFhdd1f5X3wITkUbb3
         UHDzAYoVVps4SwqfwZbXZOv2D+4NjupAcPaJQMR906rDd/MMBeVdLLI0KQiMO6IH5CQt
         ccWY79gyg+HGH2DKcDcNT+leVRP+CoP70ZOspnZ4ousbeiGdXmwGZ2X5WaoAMZixwwrI
         VpcBVno3Kffkr0aFVay4XG/xzCDilfwXWZq3+VEqPFNueYTHf10dbVb9iZnxP52C93rH
         5cEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=/KNrn1GHyyLodCpa3BSVON1/0qmfbkg8t8rQpkCNKJ8=;
        fh=yrXqn/28cMi7TDB2MITSPfHltkZMn0mX66Kdh9pEGnQ=;
        b=oSETnu4R0IP4XGJpcFjYA1bQDCsXnCX27Y+pk8Ml1ginboLTNAtUMIBmkZQO0OGWJ5
         snYwLbLmqSrjFLhSeASWrVzp24nrOo0vHRJqm4dcC6ZAxIhfAIsyu6NaRBnX8xo0QGe4
         dNnYNAAYZWOkjfd908cq+4hCd/MPwAYrUiv3t69Wob/Ggfa0JR/4+i2BMC+zxpzrKOv9
         jLadtip+M/E/HGI6ZVSBkDeGACh4i8emVrnmILsZ+caLBo4aLMcDrLsIIa4nUUprlr1Q
         WArGXlb9IkPELAfs1XDwAbv4ZCb85MNikklwUpjXK+HDEawaOz5SmlLr6ggNUEsWXY/9
         rqqA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id c4-20020ae9e204000000b0078a00baa04dsi970464qkc.663.2024.03.21.17.57.39
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 21 Mar 2024 17:57:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 741363 invoked by uid 1000); 21 Mar 2024 20:57:38 -0400
Date: Thu, 21 Mar 2024 20:57:38 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  lvc-project@linuxtesting.org
Subject: [usb-storage] Re: [PATCH] usb: storage: isd200: fix sloppy typing in isd200_scsi_to_ata()
Message-ID: <4e13319d-30a8-4274-bfa0-36d915b1e1ec@rowland.harvard.edu>
References: <e8c20e3c-3cbe-b5c1-f673-0a7f22566879@omp.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e8c20e3c-3cbe-b5c1-f673-0a7f22566879@omp.ru>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

On Thu, Mar 21, 2024 at 11:43:37PM +0300, Sergey Shtylyov wrote:
> When isd200_scsi_to_ata() emulates the SCSI READ CAPACITY command, the
> capacity local variable is needlessly typed as *unsigned long* -- which
> is 32-bit type on the 32-bit arches and 64-bit type on the 64-bit arches;
> this variable's value should always fit into 32 bits for both the ATA and
> the SCSI capacity data...
> 
> While at it, arrange the local variable declarations in the reverse Xmas
> tree order...
> 
> Found by Linux Verification Center (linuxtesting.org) with the SVACE static
> analysis tool.
> 
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> 
> ---
>  drivers/usb/storage/isd200.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Index: usb/drivers/usb/storage/isd200.c
> ===================================================================
> --- usb.orig/drivers/usb/storage/isd200.c
> +++ usb/drivers/usb/storage/isd200.c
> @@ -1283,8 +1283,8 @@ static int isd200_scsi_to_ata(struct scs
>  
>  	case READ_CAPACITY:
>  	{
> -		unsigned long capacity;
>  		struct read_capacity_data readCapacityData;
> +		u32 capacity;

This is a bit peculiar.  Why bother to change the type of the capacity 
variable without also changing the types of lba and blockCount at the 
start of the routine?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/4e13319d-30a8-4274-bfa0-36d915b1e1ec%40rowland.harvard.edu.
