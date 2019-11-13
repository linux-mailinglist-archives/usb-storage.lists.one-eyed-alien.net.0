Return-Path: <usb-storage+bncBDVIJONZ3YDRBNHJVXXAKGQE7AW6PIY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D08AFA712
	for <lists+usb-storage@lfdr.de>; Wed, 13 Nov 2019 04:12:54 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id t67sf677269ill.21
        for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2019 19:12:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573614772; cv=pass;
        d=google.com; s=arc-20160816;
        b=s4KxQxg03Z4VWi/QMgQh7rQ2kxkYNx/go+PYtYwf6OXF5A66/CKi4L2DVlg6EScr0m
         Tm2ol85jfjDbjoqFK8je/dtDs83jQGMVeab1v+wgZmkeBJYimAXFS4Qy/Tf5nANjPqcE
         a5kquGZfNlPu8nuBNSMvCzD2FpQJfSLE36eiUUWTDDNGoANZ0WBbN+WdOMq7oxhiLRtP
         3uk2k9Wr8Gk8NTEYcrZgZEC4V+V2R4t1eTgyQOgRUZBAt7uInaTmzPjwp6smsZVIeCkN
         2uNQXq6jTxUstutK83DVw6CUriEud2ZlBtBQJEYn8BEDsS+e8dWhd3g6Ue+Fg6mufz0U
         AIOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=ipE8ZaEh3edbPf0XETrqPRUGLGftibwxg2n7pdQsxkE=;
        b=fxfiUprWOqD4g987i5cLH4rHR9AWA0Zgi1FWkRKFr+ffdmb//+SDnoAxL3dGo6pyz7
         Obr1+8NQKpPPfIKw45SGLbqPzVmGRtIdC2PegVn9HcfIZfYebb7mYaSTLuSQGaPQ0O1J
         NJa2eN02NyUEPokDAqRa2VDlUe1vHx34o/+FbM7mRcya+zuycL2T5QhaqR7Ww1yk36Cv
         SQkuZSu+wwYTOKeG+n+B0yd4Wfu6VHsBs17vBSuATnVkZXuSrRcAuUbSw6sSO/DlRqAL
         hXd2c80gS6JktgGt7fQvtx7+w1Nr6Tps8B8XUpUYl+YXLbBOqrbjL2TUNew8WWZOFM9s
         AsvQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=oyrnK84K;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ipE8ZaEh3edbPf0XETrqPRUGLGftibwxg2n7pdQsxkE=;
        b=A9kvoOY0+7fBiLt4gvF7iEqaTq6UwT8vCg9LoxH33z/42bTpLux98X5TZiv3JtNIvo
         rQb4PPFZ274GYDsPfxAz3RUbH8IWJ8tI8pqZf1zYSU54EXY+DJVSQ0iGVDPxo5GQTCwI
         0//BNtrjm8rr0aZ/pZL+NjcjcOxLYfHjp/vDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ipE8ZaEh3edbPf0XETrqPRUGLGftibwxg2n7pdQsxkE=;
        b=Qjf2Kp4R4SrMyeARjwFxH5XIzcE4OXYdwzvgiV4yrQ0iGPJXX7v+9Pp3CEPSb9m30A
         SDQ/Ow3/V85KjT4nmTo2uX85T8Ac1C4Tul9MsHAgkBSUnYXZAZFfDsogZAl2bP+ISIlA
         Y5F/Z2LBRJk1BQZSlS4+DVHi1vPipRArAIhAAJBUPNvmDFmGUhD/1p3QkLSNP+FOQ0b5
         oc/gkGvJUb7AKfegXvbQRiD4EuLEU6/8i9qXjQUKpNORxVd1n6Cy8lrH9zfWxanJ9Bp1
         +H3926orz6+6zjPeYpSKLFrqRhCfSf8BwD2kczQNPsAUrOXrYvlwFpHthGPdp8/VJ0Q4
         pWRw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXiDspkO7Ap9/heJXx4WX2Jz26U181GYDZr3pvO2L2mIgBB9V6L
	0PWZ68PrndVX/4W/WOIx4mUEaQ==
X-Google-Smtp-Source: APXvYqxgJliUHcSiT/zJ2HOBQOsHll9LRzx6egkBJ8lkWtt3Ku14ul3v5EK/e5EvPxmKMX8qk/JmuA==
X-Received: by 2002:a6b:8d09:: with SMTP id p9mr1213308iod.227.1573614772673;
        Tue, 12 Nov 2019 19:12:52 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:d210:: with SMTP id y16ls151126ily.11.gmail; Tue, 12 Nov
 2019 19:12:52 -0800 (PST)
X-Received: by 2002:a92:d7c2:: with SMTP id g2mr1413015ilq.81.1573614772189;
        Tue, 12 Nov 2019 19:12:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573614772; cv=none;
        d=google.com; s=arc-20160816;
        b=aFQmlmfZPMBDXoWNU8ZKVBS9RjMBX6iKAAl0JrsvYfliFWAmWEb+8hT21v7MZ3Ulcn
         2GkDU6H0B0F3PABWe7b5gBV1jmvAvZyxPotdGrAfCS5FnhTEFGRmxU3bl0OkYWZzvn4C
         yplRMQooNNMDV5yn6JuNc7usZwB8qBEiTZOBZMdK5Tara9tarGiNzR8aPd/TgHnr9SAw
         joYYNxlz646oqqH8U6Ev0EDwlywRLxuPKtVyUMkYOjni0S6xjzT4Qb1PNAM+zgkEAX6k
         4Ybiyt4bb9XYIi6Nd1AN+NrKRmhuiZbrNkkmmy98ZRpHr9HHHUXTTUGIeLwonqO0h7Z/
         A2/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=0uycHj1hnQzwFGbzXvkxe6k9HMxfe6ttpDQFwoIQ6ig=;
        b=jrSAs2JplRmMY06vi8lG0wOxJWzGSbjcScpLsUIt8VhbrZB5aLTNTTJTZGe6aOR9R3
         dp8PyvthzNzCjRSxucv1DTgMqtOvdU2QFm2w3EHkus7/ABM/HR712CpIjzvXLgcQ+P6Z
         JA8+07uLF/mNC+jks1VbXR6r92hrq7nR4snIf8HNmNSBtISOqEisJED34ruv+YRSvX2v
         47adsnUubrh4HAuejjzXtJj+KvnaBoXqFDNRJNFvDmKUpMc8QfcO5b+A9YwYTfgCkT9R
         hAQ9keAtymJ9cOL2f35/hJh2xhJEPv3WvSzUzE9u23xFFJn1cXatVD9OAfqy/cZU7vDY
         2a5Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=oyrnK84K;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by mx.google.com with ESMTPS id c4si765262iok.137.2019.11.12.19.12.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 19:12:52 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAD39E4j105913;
	Wed, 13 Nov 2019 03:12:35 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2130.oracle.com with ESMTP id 2w5mvts7kj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 13 Nov 2019 03:12:35 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAD399jU167983;
	Wed, 13 Nov 2019 03:12:34 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3030.oracle.com with ESMTP id 2w7vpnfw09-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 13 Nov 2019 03:12:34 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xAD3CUEJ031961;
	Wed, 13 Nov 2019 03:12:30 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 12 Nov 2019 19:12:29 -0800
To: Finn Thain <fthain@telegraphics.com.au>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        "Michael Schmitz" <schmitzmic@gmail.com>, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        "Jonathan Corbet" <corbet@lwn.net>,
        "Bartlomiej Zolnierkiewicz" <b.zolnierkie@samsung.com>,
        "Jens Axboe" <axboe@kernel.dk>, "Viresh Kumar" <vireshk@kernel.org>,
        "Oliver Neukum" <oneukum@suse.com>,
        "Alan Stern" <stern@rowland.harvard.edu>,
        "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
        usb-storage@lists.one-eyed-alien.net, linux-doc@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-usb@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 0/2] SG_NONE fix and cleanup
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <cover.1572656814.git.fthain@telegraphics.com.au>
Date: Tue, 12 Nov 2019 22:12:25 -0500
In-Reply-To: <cover.1572656814.git.fthain@telegraphics.com.au> (Finn Thain's
	message of "Sat, 02 Nov 2019 12:06:54 +1100")
Message-ID: <yq1lfskpizq.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9439 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911130026
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9439 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911130026
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=oyrnK84K;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Finn,

> These two patches address some issues stemming from scsi-mq conversion.

Applied to 5.5/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/yq1lfskpizq.fsf%40oracle.com.
