Return-Path: <usb-storage+bncBDVIJONZ3YDRBS565LTQKGQEMG2E3NI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB093933B
	for <lists+usb-storage@lfdr.de>; Fri,  7 Jun 2019 19:30:53 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id v62sf1874700pgb.0
        for <lists+usb-storage@lfdr.de>; Fri, 07 Jun 2019 10:30:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559928652; cv=pass;
        d=google.com; s=arc-20160816;
        b=Eg8sQilYAZ8k73t07RlL8i+UWn6Ogr5hzbu34O6cBQN63h+Y7rbG0KFTSS/KI8hPzg
         UlcvLZCUSoMyBtvu1Lnm/u9LZhgiLkS3P4umXZjMFN+q8MMWGwR++taG6WwTQxhr/MDg
         pJlqCgbbF7+ta6oPYiN5PtFSMv2wjnsJu44Vt+4tvLH2F5qsEyUQ2Y1hg6R+YpGFZYmV
         7V4hSCsukYPn/NtEitkAbv2qtKElc1spDqN06m81KYRUCVCi+/u0pl1UnZOXi0vststX
         n90iyJKkJ9TLHeunw3J+gU/MWjf2/NmCfLKz2OhoyJdKDQ/Ras/Q3+XqMAMPfFyXZECN
         WT5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=JcTz3DwXHa8P37SPz5SM+fU6hL60quNhmTLnGQ0U66k=;
        b=vaAC+cWKuLc3ji8NXNXrWdBWkAqaSR1JPO+24snvdjIZeWH7larUfMmnCfZfwVuCt/
         XXRHUz3UdFZ+Idg83jlECByR8d+JoqbnwSe8FImQrz8sFj7cqWhMm3ekuUEl5f27MRFi
         wZLWCg1zCKTagAUId1jRzH5YAPA6ZfRCTh9wMhC5FQRXk7hWUQpXjRRD/lcA0TzbHhwt
         /10PZDFCb+Y8Fjsaw5M8D9Ydt60vhoPkUxDRJqCdMU/xUmQyC440ic1fZcoPPZKQbTqh
         PEGzbvSzG5dXf8/JjmY7vq2eWy43iLWtXtjQBhYfrLY0gymPCbyXRteHwszPxH8tE5nL
         qLUA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2018-07-02 header.b=GquEmfpf;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JcTz3DwXHa8P37SPz5SM+fU6hL60quNhmTLnGQ0U66k=;
        b=ZGORRCzikcHvSceTKIxlXw6T4TR1ZPZza5uVmi6izL0pvekgiDotQNg0kd9aBY1IoM
         opOLYynGoLP+TRA5l2hxF2d9hmOtg7VycO0/BDpEIHjVTUhOJBjQzk8lFOJXVRRwF7Ho
         gZQuNdTGnmGKtYBBUlvbz4wZDPP0i74F3Ar9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JcTz3DwXHa8P37SPz5SM+fU6hL60quNhmTLnGQ0U66k=;
        b=bb0K7mKvKXodGsVIexGEUAouevlo34y0iWue4KCzOCdUEILzR1vY1tML9yQWam5+vw
         4s2fu8Hu2+OXET1t82a3ucFjL2vJAP1JQZ1NNvacRMO6lOqZ4V36bKklQG2aCHWN2MIG
         vWzxy9Ft86zjRUmgS/bernH5L9LY6cjwtgSsCGleDlj1Jdeo8m8cBoj+JQ2H0CBDyFZe
         vt3fLt8vxxKh5OhF7K9W3jD/NiLgXBlUT7v4q4WZ86mYCADjQs7Y5muUAlkytdsUUU1X
         yqPzuruEdoCq+7HGMla32AH/3eKwmasWll0sf7RW9qGsAaMQ9/gaMkFFPg5oQcTA9Iyv
         gYmQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWZasNY2JDy25C662ZK/D8121BLDbYhNkfWqK2hY5NbxZ/ZfZR3
	f7O6sJALpGg4FSYJI87mAl8UzQ==
X-Google-Smtp-Source: APXvYqzp+k+vQtnr42REtIVq0eQWo4iOdVFm17o/QAOf7PiSXXFz04HOdmypjulOvUsc0KDOjJ1IwA==
X-Received: by 2002:a17:902:e30e:: with SMTP id cg14mr35051036plb.47.1559928651987;
        Fri, 07 Jun 2019 10:30:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:22cd:: with SMTP id s71ls33709pjc.1.gmail; Fri, 07
 Jun 2019 10:30:51 -0700 (PDT)
X-Received: by 2002:a17:902:8b87:: with SMTP id ay7mr55167860plb.97.1559928651403;
        Fri, 07 Jun 2019 10:30:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559928651; cv=none;
        d=google.com; s=arc-20160816;
        b=jEA5LhF7r+Dqycq5WJe2730PItOnebC7ExXRXfTGSX3FokVhr/wDquxe84oLbnHkYv
         QBhyZYBBW4ZUZfxxKlzO2aFPB8ZVG74tBUvc0+lJuT6HYxLbKn3iFxTN49gNKJBnTZSS
         YPj9I9VTNtptnV6YyxI8ENC4HcFiQnzsBeU9oNqEEX2NXxFoBnhuQMlPiDTgnTEaymEy
         8pZ9psm3CGJxbURKbkGuFRHke/iK5yaG1giaJKyZnPwwkflpWBrRBvPzzgFBaUYg3nbz
         HBLszUwCFpRHr7WTVM/xjxPDD5qPCYed1zUR63PADx371NLyPWAvTCsB8wEfiXVtHDLP
         ZGPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=g9qgPYWy2UeZZX7Q5xvayFUZ5+Jlv5AgZT4Wz1d17eI=;
        b=YOJuhfjJxIf8CZnx0AJWYZhIthd1BDlzNTmKrvnGKAHsD6HepZDGeqPZOaPWbIngbt
         r2B6f6KVpkht4GyGu7wwLVdZ0aAXu5SwX+lAcvAnQLsdIzVtEgyuiBXEUC2olxYtWrPW
         yWcwncm0w7vR7/tSVnuSYrQSRFEVgrOGR/WDKSpnmWbuQBwF6knSnaw6TzPXRkAlo4ZM
         E+HjmxdMYeqcpQ5AV6DQismsP6TgBqwDQGMBQyK7W+g1e7tQ0lqG+o1ci/OccTLADwSu
         Uz3npN/w2klrfoc0db2t5nuPH8TEKDMOGp5q7akeZyAfROFPAhNdZenzY+H8eLCg5Zdp
         eLFw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2018-07-02 header.b=GquEmfpf;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by mx.google.com with ESMTPS id 127si2501396pgc.349.2019.06.07.10.30.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Jun 2019 10:30:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x57HIpx6178003;
	Fri, 7 Jun 2019 17:30:37 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 2suj0qyhpc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 07 Jun 2019 17:30:37 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x57HU97U102069;
	Fri, 7 Jun 2019 17:30:36 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 2swngk4vhc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 07 Jun 2019 17:30:36 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x57HUY6s025234;
	Fri, 7 Jun 2019 17:30:34 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 07 Jun 2019 10:30:34 -0700
To: Jens Axboe <axboe@kernel.dk>
Cc: Christoph Hellwig <hch@lst.de>, Sebastian Ott <sebott@linux.ibm.com>,
        Sagi Grimberg <sagi@grimberg.me>, Max Gurtovoy <maxg@mellanox.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Oliver Neukum <oneukum@suse.com>, linux-block@vger.kernel.org,
        linux-rdma@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org,
        megaraidlinux.pdl@broadcom.com, MPT-FusionLinux.pdl@broadcom.com,
        linux-hyperv@vger.kernel.org, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: properly communicate queue limits to the DMA layer
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190605190836.32354-1-hch@lst.de>
	<591cfa1e-fecb-7d00-c855-3b9eb8eb8a2a@kernel.dk>
	<20190605192405.GA18243@lst.de>
	<f07d0abf-b3eb-f530-37b9-e66454740b3f@kernel.dk>
Date: Fri, 07 Jun 2019 13:30:30 -0400
In-Reply-To: <f07d0abf-b3eb-f530-37b9-e66454740b3f@kernel.dk> (Jens Axboe's
	message of "Thu, 6 Jun 2019 23:52:35 -0600")
Message-ID: <yq1o939i9qh.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9281 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=528
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906070116
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9281 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=574 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906070116
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2018-07-02 header.b=GquEmfpf;
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


Jens,

>> The SCSI bits will need a bit more review, and possibly tweaking
>> fo megaraid and mpt3sas.  But they are really independent of the
>> other patches, so maybe skip them for now and leave them for Martin
>> to deal with.
>
> I dropped the SCSI bits.

I'll monitor and merge them.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/yq1o939i9qh.fsf%40oracle.com.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
