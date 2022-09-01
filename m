Return-Path: <usb-storage+bncBD26DNHQRAJRBQWPYKMAMGQEOOVCTJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 871FB5A9700
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 14:38:28 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id r6-20020a17090a2e8600b001fbb51e5cc1sf1360431pjd.5
        for <lists+usb-storage@lfdr.de>; Thu, 01 Sep 2022 05:38:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662035907; cv=pass;
        d=google.com; s=arc-20160816;
        b=AV7aNonph47Ff/Ye//7Ce73FxR55xfEREZsEODw7rD1yHWIbyZdaUU/iQ8hj8G8I1R
         CqDjc04Pl2EiEVCH7rd5QQugS8dsOCLnSk5ut+E43kX1ZRvdWwKXHjYSNGC6NpZXKWLS
         OmNgaZ5dN/IvyGz9YjzdCGYmm27CMw2tFbpvwCuM74ws64bj2RzXwRMqNRCUdXsGieiR
         UzGcFLd/q3W5+o4wFa+x2RGo3eAb2DRRJotgf+3ldJJwiWMmfVZdMgop/TtjN4gemT5k
         9eZSReT/zn+hfXrHbiU9AwkIAOnKJBAQLpUG5LwMJ3oWqUp4jYunN+UGFxxEStkU8XYB
         DqJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:mime-version:references:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hy/h0cJqYWO3ZV+/h+X1sjYrcQc7DREtsM6jnAWOGLM=;
        b=aaiV7wdHvyTN78S3wR0LHac6T/5G2GjKlZES+gtURbmAgQYIFVTK1xpZ2Xhc0OkEZb
         PZVQ2B0t0yJhVZdL4rzxUkqz1UJO3spnCkZOlDq91YKw7wkzNhT5qZNQ7K8nC8LXIdlh
         Qw1hpRzsSjhVPTfvc2pmZvriQ8XotM+iu6oJvqIt0xLGF0S4LFjtKmId+kE05bXxBb9B
         npWp7Qim9wnvAZjd5O2muusXun9WEx9RVE7pE9alnlCJz0RW8fHxfP/cJu6RxS9e5LaN
         wUbYZX13TGM12d/NEO3BqcOgqhQcO2nzy9t1+GBwEzkl/ouxeGfgWE45gZ+xilZy4IGE
         qCbA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=OS83m3Hi;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.114 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:message-id:mime-version
         :references:subject:cc:to:from:date:sender:from:to:cc:subject:date;
        bh=hy/h0cJqYWO3ZV+/h+X1sjYrcQc7DREtsM6jnAWOGLM=;
        b=J9rfFfp+MeZt/YrCm1O3KW0tAi4HP3s4uYNs6YAK4JtDQkajVlYR2U6QuZEpd6AerE
         1UTdlCcJwbkUey4AS4HQbL633wyi5j4tDw/YmnmZSNMFtSypSAeKosq88ET52wTkrk16
         dz+qEr/fennL6WJqRvtxgShA792wAfVALoA1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date;
        bh=hy/h0cJqYWO3ZV+/h+X1sjYrcQc7DREtsM6jnAWOGLM=;
        b=6xJj747M9kaS6nt4RdFH658qcBogn8grzMFSKR+k6mN1nv6oKq0DjKzmgDgcPebfbx
         TKpxtXX3woTyOwFz560PC6UsGVE+qERVyN4ZZsAgZlSQOe5oGHAzbkkRioCm6yBz14Za
         8YYH22suNznbi25TuNLrsFAYqsa8Yf2YhvBNEOB1DSLRTbnzJ7xNAgmql+NILSYmKsGZ
         uEaV03PNqy/CEvixSoqyCMHI0h9fwyfak+w4PaDUPxbw9eOli+o7cySdxBgYzyqfecsm
         mFf3foe71zy7sJEKHiONAnvq93pLwr+DEy8UXykRuRpb1gZsoN1jAIzgjaEVpa4PFLa9
         5gvw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1JQr3R5dMwlpCWLwqOKjnDn8YurrbvJk3+IP2d0U/8lEtfQYmn
	ZqrmQQHpKahd6Ph0FcenCazJvw==
X-Google-Smtp-Source: AA6agR7eXkr0Eu9ZMHgfFUMg+eXWrCo+LetK5K/+mwHlcB+FmrBP3cfxYn5nJ1aAVJqNByZ5+T3vaA==
X-Received: by 2002:a62:6497:0:b0:52e:e0cd:1963 with SMTP id y145-20020a626497000000b0052ee0cd1963mr31127838pfb.58.1662035906906;
        Thu, 01 Sep 2022 05:38:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:aa02:b0:1fa:bc38:b125 with SMTP id
 k2-20020a17090aaa0200b001fabc38b125ls1550231pjq.1.-pod-preprod-gmail; Thu, 01
 Sep 2022 05:38:26 -0700 (PDT)
X-Received: by 2002:a17:902:d4c8:b0:175:3cb9:8919 with SMTP id o8-20020a170902d4c800b001753cb98919mr9175005plg.170.1662035905990;
        Thu, 01 Sep 2022 05:38:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662035905; cv=none;
        d=google.com; s=arc-20160816;
        b=SX2uHK/fldoV1UxhfuwOSVnP/FZYJ5fRt56XS1Sjmup5MUfwG1blK6vckV2VmnPcuv
         fB80oHYTDZ5mQnzhfRk93bD7mVEqBiQrxRttRZWjvSToDWBRyTTayNeh9RM686TlgCyF
         W195VCIxe85NKY+g25Cz18Q+8jEw+kIEZKN2KMVXuOfAyN4WGZ67q3bWj0xtn2kqI3IR
         6WCaZTLF+Tq9ogTv0PhgZh75hIBnz1VtMawNkwEMVwDuOaz2PL8b9OGSnr1/2PL7oQCD
         3o5RI4BB4wcCc+3ZSO2Xi6tVxDHCLD8qcNMBZaEzD1mqyOXkOa0dIxoMoyEq5wX7Lm8p
         IYoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:dkim-signature;
        bh=pIfXMBcqeTwM5Cl6NIkSU0B894yF2vZYdWYFJXTtuHI=;
        b=jOFnNrjDVMIMRJJAFX+fXwXxW24j/NV6Zo21rNwryVO1fsq86QuvhgvnLJ26ac71Su
         rcYVmFtWcSSM1nPIpPwTIbcKZAMTnCcnwQzvD0izhxXlJaBSC5Hjq5ND4RiEg8vsTwcm
         CHp33YfnVXAtYAl84bIhS/A+WonokYGrt2byKGUfNcITrKUOMyVYc/gl5za4xRWlUIae
         YpQe40rXYUFsCQkHmor9EeK3AOMegk3qehy5KF4+4J+up8RIP+FBniQY+pwYo4K09svV
         zWXI0N+CiSuvv9D4Da+Yc++eWXAnj8cSKvcgyru5y88R2cIUKBQLFdHiiaohE/NUVh49
         yeHg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=OS83m3Hi;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.114 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m15114.mail.126.com (m15114.mail.126.com. [220.181.15.114])
        by mx.google.com with ESMTP id r19-20020a63fc53000000b0042c6044840dsi7663565pgk.425.2022.09.01.05.38.24
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 01 Sep 2022 05:38:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.114 as permitted sender) client-ip=220.181.15.114;
Received: from 0V5ZS2WE6VIK6H0 (unknown [120.204.148.63])
	by smtp7 (Coremail) with SMTP id DsmowACXn5O6pxBj8lFaAg--.27689S2;
	Thu, 01 Sep 2022 20:38:19 +0800 (CST)
Date: Thu, 1 Sep 2022 20:38:21 +0800
From: "zhongling0719@126.com" <zhongling0719@126.com>
To: gregkh <gregkh@linuxfoundation.org>, 
	zenghongling <zenghongling@kylinos.cn>
Cc: stern <stern@rowland.harvard.edu>, 
	linux-usb <linux-usb@vger.kernel.org>, 
	usb-storage <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v4] uas: add no-uas quirk for Thinkplus
 and Hiksemi usb-storage
References: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn>, 
	<YxBvNEn0jEEd0lXV@kroah.com>
X-Priority: 3
X-GUID: A6C69BC2-342E-46FF-9931-90B9DC68F696
X-Has-Attach: no
X-Mailer: Foxmail 7.2.16.188[cn]
Mime-Version: 1.0
Message-ID: <2022090120371974113815@126.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CM-TRANSID: DsmowACXn5O6pxBj8lFaAg--.27689S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7KF1kCr1kWr18KFykJw4UCFg_yoW8Kr1kpF
	Z5Krs7Kr4kGw1Sk3WDZr1Iy3yFvr95AFWUJr9rC34Uua13Za4IqrZ7tayvgr17Gr17XFyY
	9rn8tw1qkFyqvaUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zi3fHUUUUUU=
X-Originating-IP: [120.204.148.63]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiuRxv0FpD+bcZ0QAAsF
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=OS83m3Hi;       spf=pass
 (google.com: domain of zhongling0719@126.com designates 220.181.15.114 as
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

Hi:
=C2=A0 =C2=A0Sorry again, The last email was wrong, fixed my email to not s=
end html email and respond again.=C2=A0
=C2=A0 =C2=A0The drivers manufacturers advertised high speed support platfo=
rm is Windows,MacOSX, not include linux 4.9 , this bug will affect the user=
s=C2=A0
normal use, run iozone is just one of the behaviors that trigger UAS crash =
,We will handle that slow issue.

Thanks!

zhongling0719@126.com
=C2=A0
From:=C2=A0Greg KH
Date:=C2=A02022-09-01=C2=A016:37
To:=C2=A0zenghongling
CC:=C2=A0stern; linux-usb; usb-storage; zhongling0719
Subject:=C2=A0Re: [PATCH v4] uas: add no-uas quirk for Thinkplus and Hiksem=
i usb-storage
On Thu, Sep 01, 2022 at 03:00:53PM +0800, zenghongling wrote:
> UAS:if ignore uas feature for these drivers can fix the not working and
> output error message bug.
>
> The UAS mode of Thinkplus and Hiksemi is reported to fail to work on
> several platforms with the following error message,I tested these USB
> disks on other architecture platforms as arm/loongson for different xHCI
> controller,the same error occurred:
>
> [=C2=A0=C2=A0 39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for =
disabled
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 endpoint or incorrect stream ring
> [=C2=A0=C2=A0 39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 0000000=
0 00000000
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 1b000000 05038000
>
> [=C2=A0 592.490369][ 1] xhci_hcd 0000:0c:00.3: Assuming host is dying, ha=
lting host.
> [=C2=A0 592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 u=
as-tag 18
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inflight: CMD
> [=C2=A0 592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 =
6f 88 00 00
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 04 00 00
> [=C2=A0 592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 ua=
s-tag 1
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inflight: CMD
> [=C2=A0 592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 4=
4 1a 88 00
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00 08 00
>
> And when running iozone will disconnect from the USB controller, then aft=
er
> re-connecting the device will be offlined and not working at all.
>
> We changed a lot of USB devices and contact relevant manufacturers to
> confirm the USB disk is ok.
=C2=A0
I do not understand why there are failures on Linux, yet not on other
operating systems.=C2=A0 If you run iozone on OS-X, does the same errors
happen?=C2=A0 How about a storage stress-test on Windows?=C2=A0 Why is Linu=
x going
to have to make these devices go very very slow and what will happen to
the users that now can not operate their devices at the advertised
speeds?=C2=A0 Who will handle that support issue?
=C2=A0
thanks,
=C2=A0
greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/2022090120371974113815%40126.com.
