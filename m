Return-Path: <usb-storage+bncBAABBPUAXX3AKGQE3YFKGFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE181E551F
	for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 06:38:23 +0200 (CEST)
Received: by mail-ot1-x345.google.com with SMTP id t19sf783812ott.9
        for <lists+usb-storage@lfdr.de>; Wed, 27 May 2020 21:38:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590640703; cv=pass;
        d=google.com; s=arc-20160816;
        b=UVsnPxQge2NWZ278gShW9bQiV2kwqZJCnNDQpJVBKYLd0NpgUSuJcFsdEq85OXDpwt
         UR3Gbitt/hK50DsJpm+j/qT22yC2XwKVMv1O69xWnnxUvct8WiM4YLkDwOVoFQAK1cPL
         uz+jNWs9QsrNfXD56ZIRN3Qvv9orkAi3ssT62FfL95LQroKDfpqgV6Q+Pnq4ehuYffNW
         jCE0PW9XYwLjApNNqhLSPqTjYyaQ71VQkFyHc2ksxWbajggOz0AxcSiZ6gTL+7HrWcYe
         iKOxjohWqaarWpsAmYsYFjbqQlC03ICzOON5cOem+ef4Q5Y/bJaDh1ToAfHpMj5krOhF
         RT9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:mime-version:user-agent:date:message-id:subject
         :from:to:sender:dkim-signature;
        bh=sM8hmtR3JjZUnk0HYAtTak2QDqR3fUIYNdhrUFd476M=;
        b=os1IWk0CwOrBjTf3O+OcdBG6ag/tFUm74BimIF1rdMJYrrx9mCjWpmbRIt2uXaiAqj
         t8g0NgWwHB8eaBAb8NuR2BFpURoRnFvvrfYz9nAUqn5Ds1WLIYf6B20eyOFoacwWxUlo
         FCPRuJTVJbtLzmgsSDPRohWxoOkSCC9XsUBW0qvMPvtpH/mKf+eKyPDplMUt9F05foDs
         D7SmIVdYMzkAP/CW2Jhf726WfIv/tDElCWfRYaGDRTs3vh2leP06lFj0UaWdjCHg0ExZ
         ZzQywjSnoMhlo9/hUoMQnh4cfPMFTB12PgfrI00NcoEHqi/fT6O5h+GrUn+NicCO4wbg
         764w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass (test mode) header.i=@codeweavers.com header.s=6377696661 header.b=XVxd9wZ6;
       spf=pass (google.com: domain of zfigura@codeweavers.com designates 50.203.203.244 as permitted sender) smtp.mailfrom=zfigura@codeweavers.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeweavers.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sM8hmtR3JjZUnk0HYAtTak2QDqR3fUIYNdhrUFd476M=;
        b=HykEBf0PB4cKsWTtefojJHGIQ02Bjlk3pGNpBqAZWVzxk3gGZXusZsovw3tMshp2Ul
         VTQvNwtJ+X2g5kSgNXIKsqjg/ntYljWwDljpkPg/fCC3R+HcaQvqc6Du4Q/3wLp8GLuH
         kMBtGLEl8ZmpiqYBCXeev+3pZpeX8giXaBTpA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:from:subject:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sM8hmtR3JjZUnk0HYAtTak2QDqR3fUIYNdhrUFd476M=;
        b=m+Cexhv5oUJ/mlyI6MNCn+GAl5R+y2BaUDsQpuXkduj7iMTm+CtcJcBM7HoCq2HXx0
         A5v0AnP/aRrLCq8vhgxEFTb3vnxjxDHGqnfndnM4PYvzTVzCohOstWwf+kBe9dkPFnKt
         DGSjZwNAjzQ2nSHuCHN/euJTN60J9ik/JoCKpHuR/AUgcTNyO1j951HnDdbthxFAxm35
         S11QrLBoi/yRptUXnR5XbbQ6KnjvlR6HjVDq4AstgqwKBba/CevuYoLeIDctP6jsFub5
         euFXbXUbkVJTz1VmQ7eHIR99I/gDDDXl//Bux5aKu2OZKThaGtVW2qm5JTE6PHXg4Boi
         7Atg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531RZqxrmL+dKKql50XbqYAiGW5t/aBRVvRhxzlBySogzAG+7wAK
	UAvJhVSbj+t3sduur0oyCg9kEQ==
X-Google-Smtp-Source: ABdhPJzqctOuI0xTRRcEuAXd3t/FPyykQBfWtf7wF98RSDC8NSEmu8b4m49eKd52yoqYa/tTHkZebQ==
X-Received: by 2002:a4a:2f89:: with SMTP id p131mr1175263oop.56.1590640702698;
        Wed, 27 May 2020 21:38:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:3987:: with SMTP id y7ls227968otb.11.gmail; Wed, 27 May
 2020 21:38:22 -0700 (PDT)
X-Received: by 2002:a9d:6f89:: with SMTP id h9mr1035179otq.75.1590640702221;
        Wed, 27 May 2020 21:38:22 -0700 (PDT)
Received: by 2002:aca:1b0c:0:b029:a1:4e15:23e1 with SMTP id b12-20020aca1b0c0000b02900a14e1523e1msoib;
        Wed, 27 May 2020 21:33:32 -0700 (PDT)
X-Received: by 2002:a92:898e:: with SMTP id w14mr1279823ilk.212.1590640412736;
        Wed, 27 May 2020 21:33:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590640412; cv=none;
        d=google.com; s=arc-20160816;
        b=qB2kkzX+0iQh8Fyr2sZtrrhd8rKFGXA44xRK6cwtYsvxYTIIPFDQi9vx3gf4j6rwzW
         jE6xdhVP2cyJS9LuxlR6C4yWMQVuIOYYyBtj0aW4nu8rMizNrumNT7Wk+jBNZpd/6UPg
         uUH4rmFDpz79+VCnQsNzzLrN+7nMYI7D+dxFa7hps3OgRt6nIe9dpbOJu0psxGgO4ugU
         G2e9j6CB64atUz1seb+zmoul1Xf2DVRNi64MHE0CSglulENgvn29rEX+6aTfxaFCHgdp
         1KNgGIdLlDtpoinrIjXzKiykd+9x3mfEGNs6/SmXC9XhAH4XIEnsvGUb7jtRyaG63HDK
         ILYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:subject:from:to:dkim-signature;
        bh=vemHJ1ofMEjf4BkGKBqYn/ibfSlLxPKA4jDOogwFvAk=;
        b=i3c3uhA/y6hYTdb+AORB3DizHRyVMMPnZgbB+jktzJmgIQtlOBr9CVV0gA4mZK8u/E
         9c9RhKa+eAgQFIT3BndJ7jrt8IT1k7KRAvaY4zxCRgYz+c2U9w64ZwifHs7KW+ePrx4J
         wp8lnynxfOG2lTXtrUAfxKeoxZkJ33q5dNFRaa0ozggDgOieJX3MDexPSeqWTuC0BZ0x
         e52IRJmN1LV3KpEhvj/uRfdaIC4pqm+Vm/UXlKy/PxLkYqSbvsp+wswWrMGPAOjGi3jK
         Tlh50vuwzPg7p2J9J+1o6aesATYSfmKKiUQyBhE3O8Cy6eykEZ7WHUYQIeQYTyIwMtMS
         0faQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass (test mode) header.i=@codeweavers.com header.s=6377696661 header.b=XVxd9wZ6;
       spf=pass (google.com: domain of zfigura@codeweavers.com designates 50.203.203.244 as permitted sender) smtp.mailfrom=zfigura@codeweavers.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeweavers.com
Received: from mail.codeweavers.com (mail.codeweavers.com. [50.203.203.244])
        by mx.google.com with ESMTPS id t78si2570992ilk.42.2020.05.27.21.33.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 May 2020 21:33:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of zfigura@codeweavers.com designates 50.203.203.244 as permitted sender) client-ip=50.203.203.244;
Received: from [64.191.7.9] (helo=[192.168.1.115])
	by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <zfigura@codeweavers.com>)
	id 1jeAEU-0007cg-Ie; Wed, 27 May 2020 23:33:31 -0500
To: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org
From: Zebediah Figura <zfigura@codeweavers.com>
Subject: [usb-storage] Bug 207877: ASMedia drive (174c:55aa) hangs in ioctl
 CDROM_DRIVE_STATUS when mounting a DVD
Message-ID: <7d0b20b9-4735-bbed-bb50-72764aefd6d8@codeweavers.com>
Date: Wed, 27 May 2020 23:23:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -26.0
X-Spam-Report: Spam detection software, running on the system "mail.codeweavers.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello all, I was asked to report this bug here. There's more
    details in the bug report, but it's been proposed that there's a deadlock
    between device_reset() in scsiglue.c and usb_stor_control_thread(). 
 
 Content analysis details:   (-26.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  -20 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -0.5 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.5 AWL                    AWL: Adjusted score from AWL reputation of From: address
X-Original-Sender: zfigura@codeweavers.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass (test mode)
 header.i=@codeweavers.com header.s=6377696661 header.b=XVxd9wZ6;
       spf=pass (google.com: domain of zfigura@codeweavers.com designates
 50.203.203.244 as permitted sender) smtp.mailfrom=zfigura@codeweavers.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeweavers.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Hello all,

I was asked to report this bug here. There's more details in the bug=20
report, but it's been proposed that there's a deadlock between=20
device_reset() in scsiglue.c and usb_stor_control_thread().

I haven't examined the code in detail, but is this plausible?=20
Alternatively, is there something else clearer that the backtrace shows?

=E1=BC=94=CF=81=CF=81=CF=89=CF=83=CE=B8=CE=B5,
Zebediah

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/7d0b20b9-4735-bbed-bb50-72764aefd6d8=
%40codeweavers.com.
