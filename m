Return-Path: <usb-storage+bncBDVIJONZ3YDRBHPG3PWAKGQEAZ32QMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id 84493CB4E9
	for <lists+usb-storage@lfdr.de>; Fri,  4 Oct 2019 09:22:06 +0200 (CEST)
Received: by mail-io1-xd48.google.com with SMTP id f9sf10552243ioh.6
        for <lists+usb-storage@lfdr.de>; Fri, 04 Oct 2019 00:22:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570173725; cv=pass;
        d=google.com; s=arc-20160816;
        b=rJOs4XJhvvQTY9PzwahTAXaPBlppZpGajTqjkEeLszTeFFPDUv9dE2ocP8KR3QFGuJ
         +jozi8bfilEVh3pS/z/ffxwuwmGwBNNgWDepELqvkw+pRtWwTqcPd+JwQJP+Ub2e8DaS
         MOA1hwRLL+jt2dqIg0MBekVGyrOGYt9XOXhmQTVaoenXcpOumx67nhAP/0hMq2yFwliZ
         jr6G3D1oG8RjAqawpS/eZWGzJCdQiAtp3ssCsyQOch0xcGVh1xSBl2vQ/Ytm4R0QApDQ
         DI5Jv9wWD/X1i8rxBy0rcHJiWLPLT4EEgYRjdWUbTHabq+MY0kxJU5e1q1OEW2dMgQzZ
         KhcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=p3HbymofB5j9U7aISxXX/JLVh+ulyPg1f5lWexflhBM=;
        b=s8iidi4iSkBpO1ea/WtkJSDG3ksvIfvy2HQ/D/+q7siFRtc9Ek1QSgW33Y9REyyKpM
         pXbq3BFTLbGgg6f/nOrX8EaRHeO9AgLGiW6JgpHC0R+Pd0yxr0BVnOMEaeEcGWs2Pqc8
         7Lv4pm2gr98rnvi32J3GrSyj0c3rYcO0zoBhng012z1BuVKX22VszkXgHyp9BHtZL/SJ
         wq1/gJPjNsi5u7PObG1KdibyBJ8nUX19JNv/ZzYkoAwaksWyXSZmjVN4CU/djBXU2eDQ
         +maZwOLSSIv549Isk1epbGa4wiup0sX4H14DVH/vKqYjwGEQO+5+rAguBxiRIRJkzK1t
         Mz4A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=crZrhvNg;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p3HbymofB5j9U7aISxXX/JLVh+ulyPg1f5lWexflhBM=;
        b=QI2qZ6WFklIUJ2x+/cuIyEY/V/I0lDOddMkYsqYCACi3bsXgjAAwBjtjXLk1b90aBy
         ph5oxqXNA1/8Gyi3nHLncrXHciQwHvChLOSJvDdAWnSGxsiL+Z6Je1CtdU14m/rqVEIU
         MmdBwUp7Zuo0+vx4+zlsaTuNbNiMqn2mH9Fic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=p3HbymofB5j9U7aISxXX/JLVh+ulyPg1f5lWexflhBM=;
        b=AcPZtQPBhTMqvZhf0NO6c2IZWz8vcSnMFlRj4rwtPuEpLQYtNP8tXewCgVaQ6RxOGH
         sU0fOBqkrrkE1jlRV1by07BxS59UUKHZ+QUTYa9izTHxSa5u4Dvcjj2yhYBiHSVj6wHv
         PnqMDAwywICtw5nKD6DUQTkcyeQmPLsXWqu8MP0mkndLebJUAYCPNIa/yORjA3oihgOk
         Dmte+ebe+Hm8eochPZPwif5/tojMN/gMCM+Gu+R57SYeCYLBB27pEJXyGABIy+pv6bxb
         ZwYGzoS6yU4sQaRYdhqBEJtIrawaUgGwr+IaDAIAnwuhTI4rmhmfHmuS9kOtDLvFz8kL
         AhBg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUshR+raaHQBGbetds1L0o268ZX4O5cNHZ9O/4/nYhzj0MBmJD6
	gshrNxMeg9s0BkdjuCLo5Sf1RA==
X-Google-Smtp-Source: APXvYqxi8s7rET+G2h0NR/rR58bhQkO6gI9agd/DRFK3yYgaestpj/IC3xPyqQKBSB2TjZ2pxu74KA==
X-Received: by 2002:a92:989d:: with SMTP id a29mr14058253ill.186.1570173725388;
        Fri, 04 Oct 2019 00:22:05 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:5edb:: with SMTP id f88ls2194424ilg.13.gmail; Fri, 04
 Oct 2019 00:22:04 -0700 (PDT)
X-Received: by 2002:a92:3bca:: with SMTP id n71mr14857656ilh.104.1570173724859;
        Fri, 04 Oct 2019 00:22:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570173724; cv=none;
        d=google.com; s=arc-20160816;
        b=T7jpk1JF2xzRTpi+jUVcgOF1C9dJWABJW3IFQxFNa6VznAzOIZV233TbtoOmCecyTq
         q+vhbWMbqJ43WOBZBjgq/inDN+UZ8yL3NNaaM/lZdlPA2ktv2mB8VVJyyF5aeK+lFXKd
         HoupH+kD/qjDib0aaKUr1P4F7Lo2ZJSA7CR4CKjq6JTsHrcDOSQdqK8cTZnnxObOOXQw
         VPJdESYD7JxUVCmxPIjZ7huxkE7JPs9bOwVrc5xIoFCYGpclS5aKZKt5DpqK3jp5yl/H
         fJfISZ0VOEex51zDnbJ7Ba6KS6sDBgHUlm6xApr89jH+Ma1CI92ivGte3WgHDnaq+w6W
         QWfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=RJQdZFxBWIYX96pchD7HqTSPHJaX4qzUeE/6y+0fzEk=;
        b=zV3QpowP8p+/vGRqXaWbH88rz62Xxda4LCBSEqScMCcltB/3DWaBPwoz6nue/BieP7
         JFvDpymkZ6RUx2Yr1DBftOnpfIgRDmC6mXbwRFLVc8HFxR5dCr4NL85ruxy2zvhKX71/
         B3xZ+BwVd4bsu2kO5WufP9PPlsgIjc2D/emGiuHUEBhfpmaYAXrzh86mUWHKlgbANvGn
         UwStxB8uVPSj9Azc0FJ74UpdsPnrSxcUqTn3mCd7k0C+cJXOZLuaOid5aDNkdm2Gx+5B
         PzmSvjQYxdlZlJf5WMfG2Id6bKBWqKUQkYelCL3BlNda9OITSFzyIrV8zGnr4vhhVyvo
         ZcvQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=crZrhvNg;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by mx.google.com with ESMTPS id i3si5829573iom.132.2019.10.04.00.22.04
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Oct 2019 00:22:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x941j8M0048737;
	Fri, 4 Oct 2019 01:45:58 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 2v9xxv8733-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 04 Oct 2019 01:45:58 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x941jiK2061395;
	Fri, 4 Oct 2019 01:45:58 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3020.oracle.com with ESMTP id 2vdk0tb50r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 04 Oct 2019 01:45:58 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x941j3JX012844;
	Fri, 4 Oct 2019 01:45:03 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 03 Oct 2019 18:45:03 -0700
To: Damien Le Moal <damien.lemoal@wdc.com>
Cc: linux-scsi@vger.kernel.org,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
        Alan Stern <stern@rowland.harvard.edu>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH V3] scsi: save/restore command resid for
 error handling
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191001074839.1994-1-damien.lemoal@wdc.com>
Date: Thu, 03 Oct 2019 21:45:00 -0400
In-Reply-To: <20191001074839.1994-1-damien.lemoal@wdc.com> (Damien Le Moal's
	message of "Tue, 1 Oct 2019 16:48:39 +0900")
Message-ID: <yq1tv8ps2qr.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9399 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=908
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910040011
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9399 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910040011
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=crZrhvNg;
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


Damien,

> When a non-passthrough command is terminated with CHECK CONDITION,
> request sense is executed by hijacking the command descriptor. [...]

Applied to 5.4/scsi-fixes. Thanks for debugging this issue!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/yq1tv8ps2qr.fsf%40oracle.com.
