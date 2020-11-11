Return-Path: <usb-storage+bncBDS5JPEL3IIRBVNFWH6QKGQEDXHIGUQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x648.google.com (mail-ej1-x648.google.com [IPv6:2a00:1450:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 715FC2AFA2E
	for <lists+usb-storage@lfdr.de>; Wed, 11 Nov 2020 22:08:38 +0100 (CET)
Received: by mail-ej1-x648.google.com with SMTP id gj4sf1126117ejb.13
        for <lists+usb-storage@lfdr.de>; Wed, 11 Nov 2020 13:08:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605128918; cv=pass;
        d=google.com; s=arc-20160816;
        b=RoC3+s8lVpmfv0b3IrUquXJFMH8GDs+29G0XFHa7kZgb3i8Qib1LRy7r+NioSVonbr
         q3VlCBL0hBgne9Q7Y5RcAaOIIh0/y4ZE4watqAx+eoEQ52W3IUN/ntHe9Y4hZ5o2CmeN
         ZW3xqx7dNvaFFhXwsK9dDxOFyaX4IFIDg+HLKeSVg2cdYJ7XuTl2IhIzB/mLhvJnNuwR
         Hp2RzjHNh7o+RJ5E0jZO4dyuN2U4xXXlNLyNFYTr6TEqmXPppUu4AwFsWVXxg8cNknB+
         rIOo85RgXBFWkTcLsnGGTIN/TGb03NmLR3Hs2FIaHuF/DtzF/CFieihznOcOE5ywCzWS
         JCVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :subject:to:date:from:sender:dkim-signature;
        bh=um8lGrSQ7BjA9Z9ro+WO6HRfDPPTJeFHwOc7WYjYiIE=;
        b=x6hxlAVgOGDZEKpSwvUEaz4dIyEp78aMInFeX/qJiwSwbXCPaPEhIp7bZLV6qvZcGw
         tpiAP0MGcLnJFhUx3Xld+5EvmECx9UU6YVYk+n/Jn3Nen/ThIE2IVfPu/BnesSc1OMUX
         G6yGa0NgWZ/X6AQwZos4tjgl4C0GEDmpQEHJtbZqMRFOI+1kEaGLQlLtFexFXZ9dayv5
         RzvnPsm+MePU7slc36DAIqeW3vti/sX6pCj/EUlUrTCHFwAxEufF2XjKbV+REGxR6Rzw
         hoYRZZXhMfjCNafDjp1xdf8JE2jdfhPAELQUWjO5892QrQBSWOrhR4zjcOtr9EkUVpaf
         6/Zg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V4Ubwjwv;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:date:to:subject:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=um8lGrSQ7BjA9Z9ro+WO6HRfDPPTJeFHwOc7WYjYiIE=;
        b=GzOtpF4RXpkGhEFEw2YgTPbcZtGPcDA4dzLEQCexbRfEygzYB6ZShvj034XCABjYi0
         xuarNv1mWdrRZVBKbfsQlytNEn/sarfhrI+mL7hl9yQF9p142Z0Xv+R9rIZdk96ZTCzO
         mMzzXN14TvHjps31W78eiVps/3/by0uaPgrDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:subject:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=um8lGrSQ7BjA9Z9ro+WO6HRfDPPTJeFHwOc7WYjYiIE=;
        b=gu+Tq7LaCKl5LOvWNt02g1QXR6BeOUFXFjBBgq0jTR142o3cJmI7iscMNlveXx1JSn
         Qew/dIBeIg9yVkJ7oUWXiOzigGgpYkEuAyO3SfKGXagzmeTWLWxnkmWvQNetPkSymzf+
         9x8gazijFjwIc6bZU9vEKQWVqa05Jhl/9u7e+1SLlf0N75SkM1SGP0iyM/cY5bHDfC3j
         SZVfxWqcDJRWtjBiQ3sRSqCAG6h8Jz1okemis/gk+9tOsq+oLinrjBKAy8t1ePSXXz3w
         r6lY2lXMuyCC9c/2aFW5t8hSSEl73AKozPQpwWPVotPHThNbDD/srYUeWkCVa9a3P7z+
         qnkw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530XhaiIBdF/D64jlBlk+wfrOMVxzxb9B1wxyGuOvyBpkfhIOICa
	ysGXV26iowbDAlpnz1kax5ZQKQ==
X-Google-Smtp-Source: ABdhPJwtvJMRJa05FoE6KIIaiTuAI1kNZQ5EqSDrAtFbHRZk55i++LmWVDIGZl2biGXSraUZ9uOFKw==
X-Received: by 2002:aa7:da81:: with SMTP id q1mr1617270eds.14.1605128918183;
        Wed, 11 Nov 2020 13:08:38 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:28c2:: with SMTP id p2ls277377ejd.10.gmail; Wed, 11
 Nov 2020 13:08:36 -0800 (PST)
X-Received: by 2002:a17:906:50f:: with SMTP id j15mr26067768eja.198.1605128916791;
        Wed, 11 Nov 2020 13:08:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605128916; cv=none;
        d=google.com; s=arc-20160816;
        b=H5BP5Q8OAn5/3LOq/CK8WQstgCuwyVXnek2NpcGlqRQ7FBTrVTZ3x8Wiv2WLQt70UF
         ELYLusmZCKjZQkjWMZALomFR9TAd8RttQ2/T8ryTMwZ107z/qaamHCO66d98kOKbrAh5
         ngy/ZHgXOntE8eQlvgB4aF7n7a/0pelOOX+2+TGe9vmnTu7e9eP/WYsm0TEzGXa/ooTi
         +jwdyqpgng0z+VGGvwZOTDmrgRrd/OX/r90RZRfUv72CfgklNxhyC0MC7suMJ2SPA9ov
         2+Fm6E5onQ3nZoQENwUXjtxJ0WWIOFsVR6Wg680QFmYZjaUn/N1t/00DOnJGZDVLoN1v
         uyFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:date:from
         :dkim-signature;
        bh=lDAKmgu5vfJgWqcyddHDPqIFtgiSrjvsXTxdwMbEk6U=;
        b=qlpacvQTsx5D3ifwq4rZLvDzDV8iWeGcsofo6i+mnVfBgDx47qsJvf9nec5ycPZOys
         8p8v6oWENL3vJ9JVq4IYNqIIDjx7DTXsVwB5W+2Z7DzGgWJIMNspDrJCjGJNbPhC+Vun
         4t6A1DF2b0lkK9hva6UzjQANRDnNpYuhAs3IdbyR8IZJVASkRt2aKPf8Z9NVTavriLJ4
         3/v9ZPFCDS0UouhAuI/7WochCWeg4TiuUR9yRwkQeE2cbfrRcU5t0oSIc1toSBaBvOlN
         w2PEeSOLfAoD9JbUTZP73vbqmNId+1tf4VByCjtn+ynmxd5kPWsdffxmzcVkbSguzK47
         gFNw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V4Ubwjwv;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id m22sor2915094edq.7.2020.11.11.13.08.36
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 11 Nov 2020 13:08:36 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6402:16d5:: with SMTP id r21mr1560702edx.149.1605128916550;
        Wed, 11 Nov 2020 13:08:36 -0800 (PST)
Received: from felia ([2001:16b8:2d8b:d300:a90c:1cb5:6919:1ee2])
        by smtp.gmail.com with ESMTPSA id f25sm1398888edr.53.2020.11.11.13.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 13:08:35 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Wed, 11 Nov 2020 22:08:26 +0100 (CET)
X-X-Sender: lukas@felia
To: Alan Stern <stern@rowland.harvard.edu>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, 
    usb-storage@lists.one-eyed-alien.net, clang-built-linux@googlegroups.com, 
    Tom Rix <trix@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>
Subject: [usb-storage] Use of uninitialized data in special error case of usb
 storage transport
Message-ID: <alpine.DEB.2.21.2011112146110.13119@felia>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=V4Ubwjwv;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Dear Alan, dear Greg,


here is a quick report from the static analysis tool clang-analyzer on 
./drivers/usb/storage/transport.c:

When usb_stor_bulk_transfer_sglist() returns with USB_STOR_XFER_ERROR, it 
returns without writing to its parameter *act_len.

Further, the two callers of usb_stor_bulk_transfer_sglist():

    usb_stor_bulk_srb() and
    usb_stor_bulk_transfer_sg(),

use the passed variable partial without checking the return value. Hence, 
the uninitialized value of partial is then used in the further execution 
of those two functions.

Clang-analyzer detects this potential control and data flow and warns:

drivers/usb/storage/transport.c:469:40: warning: The right operand of '-' 
is a garbage value [clang-analyzer-core.UndefinedBinaryOperatorResult]
        scsi_set_resid(srb, scsi_bufflen(srb) - partial);
                                              ^

drivers/usb/storage/transport.c:495:15: warning: Assigned value is garbage 
or undefined [clang-analyzer-core.uninitialized.Assign]
                length_left -= partial;
                            ^

The tool is right; unfortunately, I do not know anything about the   
intended function here. What is the further operation of those two  
functions supposed to be when USB_STOR_XFER_ERROR is returned from 
usb_stor_bulk_transfer_sglist()? Should the passed arguments remain 
untouched, so setting *act_len to zero for the error paths would be
a suitable fix to achieve that.

A quick hint on that point and I can prepare a patch for you to pick up...

Given that this code is pretty stable for years and probably in wider  
use, the overall functionality is probably resilient to having this local 
data being filled with arbitrary undefined data in the error case... but 
who knows...


Thanks and best regards,

Lukas

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.DEB.2.21.2011112146110.13119%40felia.
