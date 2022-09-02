Return-Path: <usb-storage+bncBD26DNHQRAJRBEGGY2MAMGQE5ZKBKMI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F925AA80B
	for <lists+usb-storage@lfdr.de>; Fri,  2 Sep 2022 08:30:43 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id h12-20020a170902f54c00b0016f8858ce9bsf739864plf.9
        for <lists+usb-storage@lfdr.de>; Thu, 01 Sep 2022 23:30:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662100242; cv=pass;
        d=google.com; s=arc-20160816;
        b=tFtVFYAI9J/RJPMhQdLYcy6+OxdP12ehQe3YewN8pYqNXNVU32FYxwxtEE2SgExm2q
         8Zlf4D5J5p5g3LRJ9OLZA8QaTX3htf9SJ/5IvYWPDBQlSL/S8DSiV7+nm/NEZcQCbaM0
         Eu3Gm43Cj7XgdMFHNmRT5IOQeEG9symCKRJWOmMwCzDE0QVTdddeq/UnEX7QaYvzsk0u
         C66QQ9WxHPZr85k7vzryQvlbgeMJXHIB8x500kTpN81rFK+sa0R0O5ju2U1fvXFaJhIK
         GNw5dGmt66qdO3qDPYqZg/AZLdBdntYpXnvpDQNjrDvfH19+o+x1z4Am0WwCYY4/F/hh
         udbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:references:subject:cc:to:mime-version:user-agent:from
         :date:message-id:sender:dkim-signature;
        bh=RVNy1Qw3/wp+mj8KfucKi5deQEYGgUURSLm6ra5aTqU=;
        b=Xp9+JfbRq7Egi7cbviOEF2qFwLWtqwJHlbD5LLsO1Cg3Wz8RMkh9xhqwr++ute0K93
         EDeqcjR4KgMYkQlKBp3dMqxGf2d7Q2ye0kyocYmr6/gRRw+TA2lYZJcRj5ZFpPWepU3y
         awT8gpkcStp2fdcpEutHZL9iuxoVcrRS1ulxP5hOz8+enRfeO6uH2jCA37+skXjTxQfW
         ZCDdo0gEst6/WCqXZxKRHQi6DxPikwSlJsinwJgiPiiP6aCBD5Qi0IeoueRV51xNJ+Dd
         PDxTgBbyPboBsFaLkfY0cZxWrgYhqW1ZwW7V16AOWz9LJFbPGfyMHzbOp8mikoVdntRP
         ckPQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=lDcEy69L;
       spf=pass (google.com: domain of zhongling0719@126.com designates 123.126.96.4 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:references
         :subject:cc:to:mime-version:user-agent:from:date:message-id:sender
         :from:to:cc:subject:date;
        bh=RVNy1Qw3/wp+mj8KfucKi5deQEYGgUURSLm6ra5aTqU=;
        b=PhWu1P0iVQzySJGsnbwUt8TYR9PoEjgnVykBef484Va3wPmw735nRC9caXPkbvIHba
         4sUGVayHJdNtTPP4rMuhDIn/UUY4ztgEyg/jR9e+079CJf9gzrZ0djM79mIfyV5td0vk
         yXVrCqPOjdvklKzIFLgEFTABreTDVfzQJZVp4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:from:date:message-id:x-gm-message-state
         :sender:from:to:cc:subject:date;
        bh=RVNy1Qw3/wp+mj8KfucKi5deQEYGgUURSLm6ra5aTqU=;
        b=tjtYBc0efXKNzgvgwEbjqLdS4QDrMvULuOFTQQ101cSbMocqscnqeCvzCNqF9lXuV6
         gFnjULpvkhaX1PXogZgCoR5NX8Uy31f76IZMnEVVOjr8ci+/gRiOCRNrR6aNtA2Q6s8m
         aZ6vGvqqxw4FOVZS28JKemLGLNCM+lhuYE2rAwjOUudoG1mV4Z1WT6T0egoxusiphiHL
         PHxhkTDSrc70x4T6+EDBH/tWxdbrDPx7Q141ROwixHtVuiiAv1HuEFG5VkPpKa7Eft6k
         iomNez+WNDPX3kzsYSOBdJkFzY4Zky0+GTdIPmJcn3ntSOcZZJAYWgBXiBo2fdo+KbMC
         fKaA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2K6XhPw7R20tGrg396Nq3lZa3g8O0zYFVQHdkjnUTd61BSxQvf
	1Ala5kv4j/ZdaTfnqaqMQirLyw==
X-Google-Smtp-Source: AA6agR6myXTb1xUPLV5xuLKAP0sHiyNIWSzj7VLIk3M1CNkuY4PAORUyK1CXpuj6vWZ2ep2toOIlOw==
X-Received: by 2002:a17:902:f38d:b0:175:4b7c:f12 with SMTP id f13-20020a170902f38d00b001754b7c0f12mr9981394ple.161.1662100240986;
        Thu, 01 Sep 2022 23:30:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:26c1:b0:170:d739:8cc9 with SMTP id
 jg1-20020a17090326c100b00170d7398cc9ls2802828plb.10.-pod-prod-gmail; Thu, 01
 Sep 2022 23:30:40 -0700 (PDT)
X-Received: by 2002:a17:903:26c1:b0:174:ef08:6c75 with SMTP id jg1-20020a17090326c100b00174ef086c75mr19543177plb.94.1662100240097;
        Thu, 01 Sep 2022 23:30:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662100240; cv=none;
        d=google.com; s=arc-20160816;
        b=MTAcQMipVaL5CHWcUQTiOkkmt9LNJpvse7Sx1gGGb37K53/MOmybwbVa8Qm9AqZ50W
         PWYA0PSo2u7JvrWKIQMFHlc1po2Ye8lD6utBDTlXtCybbKKduz4AOJx838BlID4WQHdn
         I+6Z+PFxy+VOcIzbAb78QC3gfoznCE+i/KLNo6yIOxnzILZhbneZkJsVZVlUFrE9U6+L
         knWAQabCTaQa3tfjSMgvzXACciTSRwsjfywFIx7IGu1kAbDjEJJv4Syj5tZAKBkpzKKA
         M3pTBSsBfJ/uISNZiyHZe7y05Buq2T31GdpnbDhkCcFigDWsXCioBsV6UWJQMnA8Hpw0
         5LVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:from:date:message-id:dkim-signature;
        bh=NxpLCjVaDr0bSOlI0jjJCyEdsZruRdWOhxTjNts6PDw=;
        b=bbM/+HL8+44l5Z1hUtKBotT2r8VqLX9McSPw9KUWMDutvvyUmmj7XxT6jly3V8y/sa
         q+Ni697bQZ+VpVveQsofsG9LVFx5ge6dWNrr/emRXUhvaAjgjfVgmor7zG4sR5ojmSmr
         /x07cf8lelOBOMwUAgyGHya6R2xISqLGzLrw0e0mbSGlEZWFQA2Xi9h94/LspsWNCA2q
         w9A25JpWjatKnPUHVoA+9GJrPA9v5255zBQCUghcA/Bf4INd4DKuQX2lJYuLHS5WZ+KD
         pTka/HCVn0T04qxd2SJWED7HkMFOc2TNiXRbu2GikwoBi5BAXeQqqYpJep79zFER9Eit
         FHHA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=lDcEy69L;
       spf=pass (google.com: domain of zhongling0719@126.com designates 123.126.96.4 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from mail-m964.mail.126.com (mail-m964.mail.126.com. [123.126.96.4])
        by mx.google.com with ESMTP id h6-20020a632106000000b0041ce0347bc3si1184607pgh.354.2022.09.01.23.30.39
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 01 Sep 2022 23:30:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 123.126.96.4 as permitted sender) client-ip=123.126.96.4;
Received: from localhost.localdomain (unknown [112.64.161.44])
	by smtp9 (Coremail) with SMTP id NeRpCgBHbxYFoxFjh+0iAw--.47228S2;
	Fri, 02 Sep 2022 14:30:30 +0800 (CST)
Message-ID: <6311A323.40100@126.com>
Date: Fri, 02 Sep 2022 14:30:59 +0800
From: nana <zhongling0719@126.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: gregkh <gregkh@linuxfoundation.org>
CC: zenghongling <zenghongling@kylinos.cn>, 
 stern <stern@rowland.harvard.edu>,
 linux-usb <linux-usb@vger.kernel.org>, 
 usb-storage <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH v4] uas: add no-uas quirk for Thinkplus and
 Hiksemi usb-storage
References: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn> <YxBvNEn0jEEd0lXV@kroah.com> <2022090120371974113815@126.com> <YxCtyOUkRlIqcC4d@kroah.com> <2022090121570194160929@126.com> <YxDCdQ885wdyr8wG@kroah.com>
In-Reply-To: <YxDCdQ885wdyr8wG@kroah.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-CM-TRANSID: NeRpCgBHbxYFoxFjh+0iAw--.47228S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Cr17uw4xXw18WFWUJry5Arb_yoW8Gr4xpF
	92q3Z3GF4DtF18JFsrAr1Iva18X395tr929ryrWw42ya1aqF90vrZ2g398u3W5GrykGw4U
	Krn8Jry8Gw4DXaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UGjgxUUUUU=
X-Originating-IP: [112.64.161.44]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiYAZw0FpEI2ddwQAAsA
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=lDcEy69L;       spf=pass
 (google.com: domain of zhongling0719@126.com designates 123.126.96.4 as
 permitted sender) smtp.mailfrom=zhongling0719@126.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=126.com
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

Sorry,replay again

a)These disks have a broken uas implementation, the tag field of the=20
status iu-s is not set properly,
so we need to fall-back to usb-storage for these.

b).I found this patch . The causes of errors are similar.
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=
=3Dv4.9.326&id=3D3ba5d3a2cf40c4ebdc1f702af3b5dea405a6a11e

c) not to express clearly, the driver cause hang on by copy big files or=20
stress read/write.


=E5=9C=A8 2022=E5=B9=B409=E6=9C=8801=E6=97=A5 22:32, gregkh =E5=86=99=E9=81=
=93:
> A: http://en.wikipedia.org/wiki/Top_post
> Q: Were do I find info about this thing called top-posting?
> A: Because it messes up the order in which people normally read text.
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?
>
> A: No.
> Q: Should I include quotations after my reply?
>
> http://daringfireball.net/2007/07/on_top
>
> On Thu, Sep 01, 2022 at 09:58:03PM +0800, zhongling0719@126.com wrote:
>> Some UASP capable USB-to-SATA bridge controllers are not compatible,this=
 problem has always existed.
> What problem is this exactly?  Why is this failing on only Linux?
>
>> you can refer to other auther submit the similar patch.
> What other author and other patch?
>
>>   this patch is fixed no speed,not slow speed.
> I do not understand, sorry.
>
> thanks,
>
> greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/6311A323.40100%40126.com.
