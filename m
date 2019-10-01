Return-Path: <usb-storage+bncBDVIJONZ3YDRBN4TZPWAKGQE5C4Z23Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd46.google.com (mail-io1-xd46.google.com [IPv6:2607:f8b0:4864:20::d46])
	by mail.lfdr.de (Postfix) with ESMTPS id E620DC2C57
	for <lists+usb-storage@lfdr.de>; Tue,  1 Oct 2019 05:36:24 +0200 (CEST)
Received: by mail-io1-xd46.google.com with SMTP id q18sf35559727ios.8
        for <lists+usb-storage@lfdr.de>; Mon, 30 Sep 2019 20:36:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569900984; cv=pass;
        d=google.com; s=arc-20160816;
        b=leQ1EVgdnH6lJ2TCEI7ZItySkmEdUmMzDVOw+EEMdcc4VubWLBS0GtTppagd94aN5h
         RchpXtufrvUu49rvCRemK4wkjzjdTQ335nalxNnDxCUsKKWz72xKIQN6Z6gNY1SXqE0d
         9enngKp+xMNrNki8UDo16xsp9fOcuYG1jrBK5x3OPY639uVeRn0+AIsZG+BoHi8iUrTw
         5d8SIBiuZw4TXNix7NzzAhKAXIEzQ7a3mqdAvlRl3S+YLVCy+E3KYoQb1gqHTnuj9UC8
         po4Cb9eEFOgSXh9fKLYeLorQmTfXJ9E46ImDYQL0Rx4ZHGKEbWJBqdafLfoNWnZtjkih
         aV6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=o//bBmwrsal0M/Q1uwai8ncNVtWLe6I6SF6Mwsi9w5E=;
        b=lH8XnqadvJm6vtQtCfaBg01E4qQrQ3bx7wAzxzH8DpEtONdbpvVvsOBEDwkAAZcC04
         0wNr6vjcpdrOmZgkwpG+Q9c11UA6762wqXbg2p2erlW8DEX+7syTeF18w54uN9pxUQxX
         /pyIZLSZNOQZQB/yK8snc69VQCC+dVVQ71COTpe4FxmBDm7givKxpsZLgvbbkBxxtKMK
         eL/W3qQNJeGZK2HIhaL8HomjJYzhW4USDMTaitO5oJwoSAKjMYyUDfsxKuN/9wbYeBEn
         pFGCVZZC6BzuQrcMACwc44r5+BsDI/t1uVEULNWEIZ6fuNx7wvxu7iJvcwL/SBpI4EyQ
         WL2Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=ahcjE+zs;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o//bBmwrsal0M/Q1uwai8ncNVtWLe6I6SF6Mwsi9w5E=;
        b=SWx9GpLRN+iZlUZxNgRU7dC/Xj1jZla77KYlDAQxWkyOwMuUIMsrp/Ll8dfcctavf6
         AHBcOHL1RKgWe4bDqsxXobPQH5RrsEcIcojSPN8bnVak5R6VI512jY6WnlICWMbR1nvr
         KhZLeLE3XFr8UClOK5zSDhsK8UbFzg4qC3vEA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=o//bBmwrsal0M/Q1uwai8ncNVtWLe6I6SF6Mwsi9w5E=;
        b=uaIBbbvYLn+p9SL8HeAilwoTDdZ5IKIvR+S31H8GX8bBybNmC+sqxtcVGZ+ah/CM0s
         O3NNCsqioDwtrRJa5htyzS6HOoy7ac24pQqJHx8M/mgViNnhwH22oWoczd1KUK/VXgOW
         Mwfay4Q5M+VDWoBoa49/Zc4BRaxn4dF4vb+K4GXbl+IeMMJH4G2kwoIuH+rFDsbxUJek
         ROwMVeKIV3FYyqAEdprFDi1/zWr3vDJCg5nqRVy+535Z4X4UiTiKONiBTw2bNEEZMwYE
         Ur1n6y9/8STgDc54szgfBMvhMoCSySm90Jsp/iaVaDb7IFvB9yc0b3TQgplH09wPNe1a
         AyFQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAW1MwN2AbqGyF2edbLNN0x0OzXzR730atajmNuSb0qW3eDmAJgw
	kC7TNuQpH68NrimLzKfW+EKvwA==
X-Google-Smtp-Source: APXvYqwt4pdHnVxFLSb2IUTLKIJKnAfYMBsN2t5tMJ7Cd8CJatyOi2h20mEbaVmZ0+aZsK1HG7Entw==
X-Received: by 2002:a92:d30c:: with SMTP id x12mr25271085ila.133.1569900983686;
        Mon, 30 Sep 2019 20:36:23 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a02:13c6:: with SMTP id 189ls1652938jaz.0.gmail; Mon, 30 Sep
 2019 20:36:23 -0700 (PDT)
X-Received: by 2002:a02:b09c:: with SMTP id v28mr22461261jah.137.1569900983198;
        Mon, 30 Sep 2019 20:36:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569900983; cv=none;
        d=google.com; s=arc-20160816;
        b=q8KSkoKe1ilY+BhgVQQoPbEBzo2c3ClBZO0CVVWdsLpwJC59EWpJ3vnKC02dmslX44
         hsCwRk9t5fPbZb/mHzYuT+JLgHgG+oPUwsQ0neBSNDcZBfc6ewsS5aoexHnGBrF7SZdO
         MhHx/PZXkQsj5bC5R9eToA8mJmIZVRvc1RnBMA8CfH8851wZljkWr9T3zYnX9U5PM6RU
         1bb5VzXp2bl+GkDpH6QMZEhAmxqfSmrBQLdVX26I0Cn8zwYsnbFMbozW7QxUzvA41/a7
         KTBzSmbyf8MC010rZx6cgVb+Fou6Wa6202qwhm+KGWSpx3oOdQ33WFyzr3mbbtjGTNEi
         00Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=7kIF+U2fEr8Xor0GAijaSJqUd6owDJUXOVGRYo8n0Mc=;
        b=Mz/KLjdk2CMcQEG1WZK2UDCAj4qxGIOPQ0uB1McN+z5RC5/ZExlXmq+Jp63xrTM5Bp
         Dc22oJECU4EKpsMC4sVPA/L0ysj+nmN2HxqWrbgzxOP+/24zQOvLKz7WVDz83yckPP5z
         QSLqQ+9nf5+U8SS78F2qE3cKrGkmwTieH2r2NQCDhGB4xvNcyuzqhrNQh/KRvdbwBsSw
         1Iby+Vau+YHgoMW9Cl1DJIAd/3XDAgeuGkujsGM+sWEFNrglmGiwnhtMUTYtXofVwr6l
         p9/YOiLwDQ6/Jy8bWtMCr5KPNIgSpHGmS6CB3HbtJ+WNfpAUg8w2UcXQed8A5mnct0qb
         xCSA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=ahcjE+zs;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by mx.google.com with ESMTPS id p12si20734961ios.161.2019.09.30.20.36.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Sep 2019 20:36:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x913YisA149006;
	Tue, 1 Oct 2019 03:36:20 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2130.oracle.com with ESMTP id 2v9xxuk042-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 01 Oct 2019 03:36:20 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x913XsNb099032;
	Tue, 1 Oct 2019 03:36:19 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3030.oracle.com with ESMTP id 2vbsm14x1j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 01 Oct 2019 03:36:19 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x913aGoW024809;
	Tue, 1 Oct 2019 03:36:16 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 30 Sep 2019 20:36:16 -0700
To: Oliver Neukum <oneukum@suse.com>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu
Subject: [usb-storage] Re: [PATCH] scsi: ignore a failure to synchronize cache
 due to lack of authorization
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190903101840.16483-1-oneukum@suse.com>
Date: Mon, 30 Sep 2019 23:36:14 -0400
In-Reply-To: <20190903101840.16483-1-oneukum@suse.com> (Oliver Neukum's
	message of "Tue, 3 Sep 2019 12:18:39 +0200")
Message-ID: <yq1lfu5w30x.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=740
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910010034
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=827 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910010034
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=ahcjE+zs;
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


Oliver,

> I've got a report about a UAS drive enclosure reporting back Sense:
> Logical unit access not authorized if the drive it holds is password
> protected. While the drive is obviously unusable in that state as a
> mass storage device, it still exists as a sd device and when the
> system is asked to perform a suspend of the drive, it will be sent a
> SYNCHRONIZE CACHE. If that fails due to password protection, the error
> must be ignored.  --- drivers/scsi/sd.c | 3 ++- 1 file changed, 2
> insertions(+), 1 deletion(-)

Applied to 5.4/scsi-fixes, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/yq1lfu5w30x.fsf%40oracle.com.
