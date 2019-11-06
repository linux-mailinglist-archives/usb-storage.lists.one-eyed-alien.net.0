Return-Path: <usb-storage+bncBDVIJONZ3YDRB7ORRHXAKGQEPH5JKNQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0B9F0EED
	for <lists+usb-storage@lfdr.de>; Wed,  6 Nov 2019 07:32:31 +0100 (CET)
Received: by mail-io1-xd48.google.com with SMTP id r84sf17413240ior.14
        for <lists+usb-storage@lfdr.de>; Tue, 05 Nov 2019 22:32:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573021950; cv=pass;
        d=google.com; s=arc-20160816;
        b=PQnb2nWFW03+kCdPUt9SRHrOPXOCQpdrFOgeTjyajtYyv8CqtPxzZXu7+8QUV2FS85
         eDynBRrZjbt/qsPitzkIDfY7SjWLFUqrg6K3lr4N2j5Tp1LJY4VF5nsglYLOoriUCmTr
         HtwcbC9qJ1eZI6fbV18F2pXAMKO7EM+bJEeVwwCUpDhwffeIX2tiWguX8Zltg1etSpu8
         85yUWVmEfP6klREVfwtuZS+tcokEV28SC0AnDv80SIDPjD6ZaHkeSkYLVc5kMR3aOH8m
         8QXFWS3ZzUqmvpIJR5+ySmukMiqR1TzR+GdHXVLN3I6h9JZZKn77aTUxDfCBriEBuj7z
         aaAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=F6lsFVulD4nx3gqgfFJlTrtnPYisITtMxULNa4VSDzk=;
        b=XUGbACuJ9TRLEgYras0iJqVGA5B9JBaJOlOIfQGvFVFtSaM9UplrDraxlpGMgXzbZY
         OKejxaq2pTecWl+rBSBXWQ8M1MPLD/ezULnw0KVt1GMi0dywer+wdSYdDx/eS3V7V7PY
         m14i+Rtuv0CbKBgik/sdMHMs4NyZsHWMGeaFQljEYeWO86hM3AqygfXHv2WsaFgUK/y8
         Na7Y9IVuHXhcBUAFD+qwNxEY/YO4nWGrGUh3kb0Nw+uknsRAWAYQ552bV9de/mQYORnH
         5gfiZaH+B0N5CAcdi5uU2JlqvFVuDrZKzcRUjnWIuG596WUS+VXXv/4mTciIkUiAT/8/
         Y4eQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=KOzxI+wH;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F6lsFVulD4nx3gqgfFJlTrtnPYisITtMxULNa4VSDzk=;
        b=jK5DyqqRKEdvMjFPnT3TlrKDcugTMY4+WulPsD06xTO4NIyYkTaPSOhN8J6ZTlz46j
         WvqHlPb4VD0iSRG62laBLVR5vRIM9yqJRYHllHCSi6tmsBtrc1OQjURwSnnucZ/6nP7c
         x/0ujGCLV080intTcCoRxmWWPLY+zSKDb6I2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F6lsFVulD4nx3gqgfFJlTrtnPYisITtMxULNa4VSDzk=;
        b=rH2/ykwd9GzrWwhF8fSr6gq/QHyUEdpEi9t9E4PK7oK+nsfSaelBv6DCLG988A7ro2
         bGrP2hGgYCsDxWI/4BsXKBja1cu7TRTbOneDoZ9+kUTLpbBl4c6NBJTs/8Be8wW2kq5o
         +NRVMvlwfb0IraJ5A94rrQjFx0SVpKSOL54XNEu/4nLjIyhlMWm9S7bIQb+DxEg9UrT2
         FjmGUpC8zKMPc5gIiI1PqbIoYTTKjoGluCwEyZgV3p85DzRU05D2PpHlt/VbE6VZ4Pel
         /WSOsZtMQuJWlIsRtTePz+jTnbQNbiXtI/12zIhn65jjeczL01SZBUQcQYNzP55gxHg5
         wBoQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAU00L6Bn59jHQMQdiFLMpfdRV0MA3BDtfeImA4GzGpaBOk1fThh
	2fRlSZngvoZn8/v5JSyoe2wHXw==
X-Google-Smtp-Source: APXvYqxq5KfG+w0DjXXcpMySS4RANmRKMb/iwODpFy1GjKk/MNhkkGC6vCsdoY/Uk28qGWtXZ2B9wg==
X-Received: by 2002:a92:b103:: with SMTP id t3mr1043969ilh.23.1573021949915;
        Tue, 05 Nov 2019 22:32:29 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6602:22d9:: with SMTP id e25ls163660ioe.14.gmail; Tue,
 05 Nov 2019 22:32:29 -0800 (PST)
X-Received: by 2002:a6b:ed05:: with SMTP id n5mr28476410iog.273.1573021949424;
        Tue, 05 Nov 2019 22:32:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573021949; cv=none;
        d=google.com; s=arc-20160816;
        b=ery3RyA8Uw++zN6jtwVXSAduO0IhA0vuDHWGmpxV5q6I0daUpRHA0RA5G/ruYMH2qx
         DuzQ74YHtryB0lfxF7K3K4MvPv1UUEbFTsulImM5Lp8h3n77bIWNyJpN3hdYKudgJIlF
         rXeSO7A1bwrFSOc7uHmEoK61NJSJ3UT0Kb8HCLRMRgr11GzicMeVZ+p5WU/fR2xCi3iJ
         g8cc17L7Y/bZSzayxQ6obeXkyZDYEDcV6hdqYydW8DcTz5j4yLzB5kNz65KNfnEFXmAa
         HCwZ5qR9iCXgr+My9CA1oYyWtgXZiVxfT02zlEqgaektjLvG8/Eg7hgBcKuuSamd+sjW
         +BJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=/ZtPK4ZzB/bJ4YHeBLzDhoB9Htw2t7HAj0EdVtIAxYs=;
        b=dDftitR3yvXijeG+48AT4AjixMUD7GqQjMf8G1Y+Tq+mRVxdp5gbZ+5pt6ZcqcbncE
         Y9eJrlxDoG5oc3VAPD1RHAd7zkr5Ijx73j5W7tZ5LJiQvS17P7tR/Ig5CNGM/0BiFe2v
         4Y4+LwO9nyKrjPCnQPAtg9PdWBAl9cJruEg+FBvcKsuould2aEMKoMq/8RZboXjLL8r/
         parrUkqzInOZmRo6fv3wMYj1tf4UxDN/z++sc0zjW3bt34BM2Sp+hl88XaAPEgzsoll1
         ysRSvkzRnlJc7ettMoATMXf4vvnM6wNOOgB/io1D1B0B3byINvOuO0CujQW/pmj084ls
         JCgA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=KOzxI+wH;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by mx.google.com with ESMTPS id g2si33456587ilj.41.2019.11.05.22.32.29
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Nov 2019 22:32:29 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA64Sqli082794;
	Wed, 6 Nov 2019 04:31:22 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 2w11rq32m8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 06 Nov 2019 04:31:22 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA64Spdu006375;
	Wed, 6 Nov 2019 04:31:22 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3030.oracle.com with ESMTP id 2w35pq6xsq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 06 Nov 2019 04:31:21 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xA64VFSn001743;
	Wed, 6 Nov 2019 04:31:15 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 05 Nov 2019 20:31:15 -0800
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
        Hannes Reinecke <hare@suse.de>, Bart Van Assche <bvanassche@acm.org>,
        "linux-scsi\@vger.kernel.org" <linux-scsi@vger.kernel.org>,
        "linux-usb\@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "usb-storage\@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
        Alan Stern <stern@rowland.harvard.edu>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191030090847.25650-1-damien.lemoal@wdc.com>
	<af516590-58dc-0377-5c54-ac63cffbafc8@acm.org>
	<BYAPR04MB5816D4B866F2E7CC421E8488E7600@BYAPR04MB5816.namprd04.prod.outlook.com>
	<a33afd2e-a7d6-5584-dc26-79fb8f3d6a97@acm.org>
	<a640ee15-515b-6811-9883-48b49ead9276@suse.de>
	<BYAPR04MB581685E630A8EA91902B2F9BE77E0@BYAPR04MB5816.namprd04.prod.outlook.com>
	<yq1eeym52a5.fsf@oracle.com>
	<BYAPR04MB58164FF9171FDA66879E7400E77E0@BYAPR04MB5816.namprd04.prod.outlook.com>
Date: Tue, 05 Nov 2019 23:31:12 -0500
In-Reply-To: <BYAPR04MB58164FF9171FDA66879E7400E77E0@BYAPR04MB5816.namprd04.prod.outlook.com>
	(Damien Le Moal's message of "Tue, 5 Nov 2019 05:24:04 +0000")
Message-ID: <yq1bltp39tb.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9432 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=513
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1911060046
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9432 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=593 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1911060046
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=KOzxI+wH;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

> Or keeping resid_len as an unsigned int and adding a flag specifying
> if the value means underflow or overflow ?

It's been broken for so long I'd rather make the overflow case an
opt-in. So a separate flag, please.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/yq1bltp39tb.fsf%40oracle.com.
