Return-Path: <usb-storage+bncBDVIJONZ3YDRBQGITLXAKGQE3IFOGMQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7A1F5EC0
	for <lists+usb-storage@lfdr.de>; Sat,  9 Nov 2019 12:34:25 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id x2sf10297972ilk.18
        for <lists+usb-storage@lfdr.de>; Sat, 09 Nov 2019 03:34:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573299264; cv=pass;
        d=google.com; s=arc-20160816;
        b=AUs1/Ot2uH2/IQCumO+SpX31/6K6LLCQnT70S4mOzE7mrkg1EdIe5No5MB0xeDl95r
         MbUnhxasfotmubGZyzoDNZr7uZgCzCtXWqXwH6YJ9ZczUaVDFZ/mkCGYlhshp3JlC2na
         9fK/e6238A20UIrmXQ6nqgZCOCGb01AhnlJgWK9f0pg1a0/IhUGXTklZNqc343sYanIV
         JhNBcxWKdoaKsSKKrhclX+8t1TVnDERZTXuwqZXUcWnXQkXQSmgPChc6Z6vIY5Eng6fW
         o8E0EAR+GDn3lmLw9TUOWuZ5EMkfwsSicc6i5bj0xhF86oQ77ePvGe4jwp/pU7a9ZYLS
         RziQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=Th9hqZVzbobNaEn4kaQ3J+HE2VJ4uhtJi6uzwMoqgHc=;
        b=AWzf2YObD/1kuzc/gmpSHvv9n3f89iIgKsZXpd34sY6k/KoX47AqvzsvZ6WDFCTK0y
         Y9y8LPeWF8cAhe9PkNd8uVg2SceCIOhIzKEeDnB292sP+/inKd/84psSlUeW2zO2QAFa
         SkeM20AYbDOUsBenRaNGAJy2ooy3dlhm0SxEHs8OfwPcXyeZz0UBGR+gACD+QLh0xSCV
         KmJyETXp+p/wSF27LS8G8KeCMtjyGgWxtDGNluvqbRtT8ZFHIIx4qzOyKJMwJeteDgxj
         3+PfrY+w3wRbnS1btwcBpSPFRq/WP3iww7dbV1xOHZOAtaYA2CnCxshr+8pBnSA6XOb/
         aIAA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=OzRXxjAe;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Th9hqZVzbobNaEn4kaQ3J+HE2VJ4uhtJi6uzwMoqgHc=;
        b=RWQZxkwLqAvUEcuxE4R5GHMtMlbTGgCpuAPco3bOWunCPeKV9fF6JDSw9AzT0hF4oI
         JTVoQKWaWIsS/tl/oTNCwhz4ianCHzJd4xrMka+xui1Dal1D4Msp6RxB2Sp5jmBqnI6Q
         msAXHvEYh9qDyKbPO7SvS9oV4axrGpICHVw5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Th9hqZVzbobNaEn4kaQ3J+HE2VJ4uhtJi6uzwMoqgHc=;
        b=M3N6o1l8oKacurlFskzvpqwQ+LWwWpSvRR3wugZnGt/Yu9148nNDmRDP2g88G0Rb6R
         8yCDHqySBLvXNmQbaJ7BN9DEb16/fsPZ9d6ILGXbDWgFGtEZhzym6T5Ofvlq34gycdBo
         tOwObQVTud37LTvA5om9ntmOtMfgVHPXhoMt5XPGBbvU5PLqwpgvLeLarkWIxpjW+R9N
         cqo3+H7DTSXwXG83b0aL+xYbxlRqBX1tGUmMS7V5TKxxAZrAyLMdaiq/dtjquHso1cZy
         8aT829+J2UzVA4xXffz5rIKxsd5avyWWgbx0pYu17kHeVO0/m6XyXzHI7gbsNxOv3hp8
         9MNg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVA6RZmNYwz3W1QCSGguKaT5JF/RSG3HSpySbLwUfMBTJikGE78
	wObsPBvXIMbXiQyBaym/LqknOg==
X-Google-Smtp-Source: APXvYqx7G0Ttn5bZNY8MFHMnxhIh/xq3Of6/HUp4bmoHeHP7/tinx7zu6sI9gOm59b0ax1kdnwvuXw==
X-Received: by 2002:a92:5c5d:: with SMTP id q90mr19805234ilb.22.1573299264371;
        Sat, 09 Nov 2019 03:34:24 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:9cd4:: with SMTP id x81ls428835ill.15.gmail; Sat, 09 Nov
 2019 03:34:23 -0800 (PST)
X-Received: by 2002:a92:17ce:: with SMTP id 75mr18575314ilx.88.1573299263790;
        Sat, 09 Nov 2019 03:34:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573299263; cv=none;
        d=google.com; s=arc-20160816;
        b=datgWnoGXr5Oxlh7aoOPP2hRJAlbPziOSIJkn01nT4gIm/kSjNU4Mrf57LOclwuBLP
         JWsS7K5ehsZPhhH00f++9VWlnmPAFErRilLo5It3gXcclow1llRgCuAAfqA2S46NAyoy
         0EiUbtWsJ6UiM4CInWu6E6kPNvE+rTAjne0i8ljegFi5xaA6sEMZw1Jc+ldjeEWcQuBx
         RhKdOfmJKIo06qD97/6Qwuksf6PMmaCDXoHlpVv2rv9rAgQqvEOiDMBTwpct8rzyCFs3
         TujrcDfYbBaIFuAKtjpCiGXv+LA9dAzY9vxXeEoqMqFTabtCJxOBHxKissIZxcntB26l
         qK7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=Q0kudnsn3um9Rdf4ICa07b/1x2v2i55v58omAGfOCg4=;
        b=lLAEKLWUeWHuSF3iFsJLb4QSNNJdM83TYUT+ST6OLBzkjZPf3dQ+KDgT2/Jfl+bF4B
         AuJjz9wMEAJx+lsJSBe4Vb47nzA6RV3114hhNUD+sN2XcCtkMbn4MqBB1NyE3CXjPsZH
         O6tQ46wSL6Xha7ECSbHHkunKZcYVfCAljSanZDC6gTjrUK6zN55f5SbyCLaJUwMhJ2Kl
         5UHh8+ccYi/2TV4cSmEu030lgIIi30KA3CQ3qWuBIX2t8tui2OXda2Pckev+Yxn2PTyT
         SpLO5sZjZ8LsocjM66rRnbXBMkD/yVbzZh7hcF3YU0tNyquoQuazJ/R1wQjlVk60idqe
         +iOg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=OzRXxjAe;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by mx.google.com with ESMTPS id o5si11287093jao.43.2019.11.09.03.34.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 03:34:23 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA92cvQI178667;
	Sat, 9 Nov 2019 02:38:57 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 2w5hgv8cke-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 09 Nov 2019 02:38:57 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA92XF5Q064106;
	Sat, 9 Nov 2019 02:36:56 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3030.oracle.com with ESMTP id 2w5kh3vwxc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 09 Nov 2019 02:36:56 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xA92aq9o006538;
	Sat, 9 Nov 2019 02:36:53 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 08 Nov 2019 18:36:52 -0800
To: Damien Le Moal <damien.lemoal@wdc.com>
Cc: linux-scsi@vger.kernel.org,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
        Alan Stern <stern@rowland.harvard.edu>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191030090847.25650-1-damien.lemoal@wdc.com>
Date: Fri, 08 Nov 2019 21:36:49 -0500
In-Reply-To: <20191030090847.25650-1-damien.lemoal@wdc.com> (Damien Le Moal's
	message of "Wed, 30 Oct 2019 18:08:47 +0900")
Message-ID: <yq136exvkqm.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9435 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=533
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911090024
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9435 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=634 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911090025
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=OzRXxjAe;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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


Damien,

> struct scsi_cmnd cmd->req.resid_len which is returned and set
> respectively by the helper functions scsi_get_resid() and
> scsi_set_resid() is an unsigned int. Reflect this fact in the
> interface of these helper functions.

Applied to 5.5/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/yq136exvkqm.fsf%40oracle.com.
