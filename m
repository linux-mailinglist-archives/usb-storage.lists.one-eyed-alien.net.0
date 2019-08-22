Return-Path: <usb-storage+bncBDZIFAMNOMINTZXY5ICRUBESGUGT6@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 6822E98B49
	for <lists+usb-storage@lfdr.de>; Thu, 22 Aug 2019 08:16:58 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id k15sf2676380wrw.18
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 23:16:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566454618; cv=pass;
        d=google.com; s=arc-20160816;
        b=npF+3DSwgWKE5xBbAny3yvAMir1DNT1RjhsETgrpKcEpmTZrzXCgy0Ua7E8T641+0m
         tsrEoDEZKrDX7vDgOOXaZTexgWmPqElT4rhJtNEj8PqiozGElpq9uSLA0iCHBvccmWNl
         CKizpyj5OiRiCLi4K4IQetWRZX90Hu6hgbJOhiRNEtsiIqWcppHSb/VLITStW5ce5CZ+
         9SgMpzsADD4aVH4sql8+mL58dzZ10xP3zDFWy1/5T1LKCgngvwxe7lf3T7kqkqoJyR1S
         2xI3bk3eHpaENC9DCjVmsJEtFezskQDvCImPiE2NPVtLH2ORhj0QsUBWjTnA1Gkk8DYV
         Wppg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:cc:autocrypt:openpgp:from
         :to:subject:references:sender:dkim-signature;
        bh=K9kHHimWUTv23jis5LA/MPDuEdSWWMLa64CMPk3iZ8A=;
        b=eWcjMeNhI7E/QUQPzxRVuKwt+BuOIPBwnOpBIwwwgaU1Rup3+wjSD6Ggu+IoPtlGgq
         RCj4BcSFVB00PVOY+ODpedzbA1wiPBrjhXVxKUHpIMiWsShODivoo+pmkS4WXa724KTq
         Xr/0J2tyDrA0QyshbtxtVhC3cj/kpDX9Kv0kTsKw4ZlLS9sp+qf0BLAJckaTjpn1c21S
         87MuKg5E06IN0KrUtoayqcmNRc9nHOLoy/yAhWyD1G0cR4jlM83f/cd1dkzpPMunWUGK
         4faIihWfiv0SNsqSixlbaw1pUbVNxyqm9LsZ2gsTbkw+f+G2HQEeIH2mwyjv8ubKOfA4
         1vug==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=nVopATzK;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.3 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:references:subject:to:from:openpgp:autocrypt:cc:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K9kHHimWUTv23jis5LA/MPDuEdSWWMLa64CMPk3iZ8A=;
        b=eXC8QkD9MBBV8qO1NynQlEdM+ag7t1T2KgqBCLC1PsKZC/MInvTcLPpNeJiHhQ0T5l
         vGEWy4Zrkwp7aJsvutN5tNjerP4WwesTglL2tidlSCfbt/geX8dGst29468vvrmfVBs2
         4sNYo6tFz/jhD8evHCdqiN7vF4g6QrtNaea6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:references:subject:to:from:openpgp
         :autocrypt:cc:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K9kHHimWUTv23jis5LA/MPDuEdSWWMLa64CMPk3iZ8A=;
        b=Wb1zf0Ebr3UMq+YevaumSKoPQka+g86xas1GYYo7gTXZLLv96PqRswGX6oESxqIMUo
         LwIOWF1zVSgYITkvfN0AIFzemI3RA4lyTADD+hlIR37NAf7irtztiaDhs6AFFXe0v/NF
         JG0DXIU/8BQ9Rm1ampzd5Yw2utPUGAyrSP6feOWCe0SRCAJxe8Wt02GaWBAM46RNCoRm
         onXEZE23DBzHykpdm8uhjaGNxD7JYCdonSUtFqY8bMRYn0Lp6H09YfOiyvLu2eIKlbuF
         gy3SJtJRD4/sZHMN83YK5DCVM9jYWOK9vsP5HGYnxoMjKz8kOhVwlastDe4GuI8B4i2+
         RjCw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUiNiSU28EDSk/KjKoFH53sm1sg9stwQCk7k8Ojv2Fx3Nk3l9n8
	2SjimLBi/5CKKYhT69P9e7zZxw==
X-Google-Smtp-Source: APXvYqzliFPV2/6W41tesYubjyUUUKDiP9hVOVmCzsdxsRXS1QfQlrGsRKB6WGX9fTqWTv3hLij0HQ==
X-Received: by 2002:a5d:46d1:: with SMTP id g17mr45415018wrs.131.1566454617975;
        Wed, 21 Aug 2019 23:16:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:3b05:: with SMTP id i5ls1927460wma.2.gmail; Wed, 21 Aug
 2019 23:16:57 -0700 (PDT)
X-Received: by 2002:a1c:8187:: with SMTP id c129mr4089734wmd.32.1566454617150;
        Wed, 21 Aug 2019 23:16:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566454617; cv=none;
        d=google.com; s=arc-20160816;
        b=GzdGv+acFpvy2MCTITWqle6gzuLyCF8baxtspsqvrGrSo+PDBsD+U9wgYb6UkplSh3
         HhTK0MmRSyNxVOX81qONdAGnmWgT/2zAacT8Ws2QItv62O7Q10I0Qx3R2zn85SMiRmyT
         xNys/D3+3rN7IqXhMcBjWb6yAF7z5NxSxgivU5Z9xECvRnTw2j3a7o88FcoiDjC3AjR2
         pRK44rlzygv2Oxjf9euiqJ5H/sPP5hohBPrph4mFDRDmOhKD2/DLuCDumtzJLnUjqiiG
         Hx/GyqoqAgKUbhlwxfZzY4f4offyyP9Y0KM9kJoM/8EaYRTAsRxuxix/GH3uF7gt7xgl
         aCew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:cc:autocrypt:openpgp:from:to:subject:references
         :dkim-signature;
        bh=MkGTB4qOOJ+Gk+gcg1NE37PidNL9uWbivYr4ZW6DAWk=;
        b=h9W58WID1qKknXz03gC5t8H/k3b06Ln66/loYwewYtmv0m/HYyKWBU4Bw8OJWPfltV
         bJm0yqd2Q8I7v9Bp41KReFbc+CVth/dhP4aABtJIb2ESIk+3gbWzgqVrvAlBrZcyvMDt
         C6Rh8j3+BiOryLysUJzAlr/De0FtUKqdlpmr7OY/6jI1VoPYlA1PyYPoKWcD2BpC2VIB
         RjOiIOKhreWfIdkTHWsDL8oyGZK1muWGS5uI+5cN+62JJC233d5xndWrCgxTgaeS9rCd
         2eFSJXgc9UrDLqWBnwAWh/PG5BbW7knBEE86vGK0ifmyYZXHQgjvU0ge3kPmh5c+pD6t
         ASGg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=nVopATzK;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.3 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
Received: from mout.web.de (mout.web.de. [212.227.15.3])
        by mx.google.com with ESMTPS id i1si17874053wrr.20.2019.08.21.23.16.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 23:16:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of markus.elfring@web.de designates 212.227.15.3 as permitted sender) client-ip=212.227.15.3;
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.49.181.43]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0M5woT-1iC9T330vZ-00xuA3; Thu, 22
 Aug 2019 08:09:57 +0200
References: <20190821114955.12788-9-maennich@google.com>
Subject: [usb-storage] Re: [v3 08/11] scripts: Coccinelle script for namespace dependencies
To: Matthias Maennich <maennich@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Julia Lawall <Julia.Lawall@lip6.fr>, Martijn Coenen <maco@android.com>,
 Himanshu Jha <himanshujha199640@gmail.com>, cocci@systeme.lip6.fr,
 kernel-janitors@vger.kernel.org
From: Markus Elfring <Markus.Elfring@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Cc: linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-modules@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel-team@android.com,
 usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, Arnd Bergmann <arnd@arndb.de>,
 "David S. Miller" <davem@davemloft.net>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Gilles Muller <Gilles.Muller@lip6.fr>, "H. Peter Anvin" <hpa@zytor.com>,
 Ingo Molnar <mingo@redhat.com>, Jessica Yu <jeyu@kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lucas De Marchi <lucas.de.marchi@gmail.com>, Martijn Coenen
 <maco@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Nicolas Palix <nicolas.palix@imag.fr>, Oliver Neukum <oneukum@suse.com>,
 Philippe Ombredanne <pombredanne@nexb.com>, Sam Ravnborg <sam@ravnborg.org>,
 Sandeep Patil <sspatil@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
Message-ID: <81cc3995-ea95-8125-bbd2-2889cc623e23@web.de>
Date: Thu, 22 Aug 2019 08:09:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190821114955.12788-9-maennich@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Provags-ID: V03:K1:9LZl2wqzsp0x2TafjaRoU9EeqxgnDZXFmkrC+Ti/L+vIL7UfNgB
 V2wq50MMJAjg3qd+NPRguYavUCq2c0qLxxDHvaAe5scbimexXV/Ncs3jW+9ds31dwOMnEEB
 EeRiQ0HkGh/y3pr3T76fb2FUcWEXrdC/SfezhDcPKBaYstMAQoitoEpZjPiKOKji4V0R+Y1
 M42nA81yVvaIwy3RZYSZA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LXLvmmofiwQ=:9lvYbVH/TFqBKTzVMz8hHK
 cw345AilXaygWNrsAl3wBQm/GJrXSsuNKi8R8A0tElEdvJyH1p2Q+3IERNfGU2aXiNNw3mzCp
 E/DbnXVtb6IgPLIxI+edckepRECnSHsSupbJRs+avdDKrY23GKpqXUkAilWpdxTREW+2ljMs9
 1i9kYsBkwlMB7yfcvDsBzkIddKmhJ8JIRNbZGj7hsm5HIlkL3dytRZk1w1UcrrPAKPXY8FOy7
 bs6DCN3JTy5mTqvvvYykXz4O2jMescM9FyFzWMsIn+oYqDDXjNpdLUNvl9HJcKDr0pVvZxbfN
 F5bH2s3JXbi+2+HWlXAU3GkySoMhsTqeuVh+mRV9pPacTwWBbs7vDE4OGXRB30eLqaIKiGi1W
 2Pid0VZ6Zt2H1/Wny5hkWk/6OogRGsNtcDTTEbLVLQ91XAhM0pi+j7QA5lwl4+/ake02IRSko
 t6g99UcnjowB3A0r9PWWVtDlRmiYDhOEE8DyHx+lWCjqQfQkNYbZOmcXhvD+JC8FN9dPqQd04
 rD564FAG1zR9YA3z/6JXj7zdT9UTxpVRL9d5Ucc8haWYnUci7QmiuyBG0UwrU6NqYHv9P12M6
 HAFNGzGTXIp8yi63bYF/4tmt+r0hsmYmoW0SniWr7WEbDnU1bUufPIvRnsaCllAjO7y3SjqKd
 TjTxUkxTK7QHr6irAPCinpM9xsrkk+irILFrnWbI6fBBDvMQ6rfELpZzgfykWmDc3mQ6hqZYg
 fubDW3B1u5+X3p/kw/SVIfeWB9UzCWXj7Qum4jNZCzeBpXZOv/kuQY3ACaLkhrOEFrkiT1VHS
 rzcPtx6JIBu3uAnDqIHEbiNNB79RszeZV3UrZo4jyxtZm2XM0w5h6uGLzAU8reMQcqzJvPepS
 DoLza/sF0y9AATCrxu6F1W7xOpgB2/v4hqM0WSEvhZqPINvhXYOAZgE9IpvIgDu2ao0smILgV
 879yFo8DeBWBe6Vz9ZM6MTeQzPvkQYUGTOXNWKcYH84avcfkHHb17sH9PucTkAxdYkwNTohZd
 +yoNZUTzwDoOKQEEAwnCqhdc+ETNjBVZhBiozIYKzxXMxk62IjBS7l7kHEKQm1oMfnSGgpyF9
 8yb1XGqqA1YBj0FAuNqa66znfjGDlNGEWfUiefWB7KqpNQNAdc1iG0ktH1N6vFK3HYZsPRO3K
 6Z2iWB1PTba02Gn4ptnCFXoVPCVjJFJAL+T7+lpa/rmc1dWw==
X-Original-Sender: Markus.Elfring@web.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@web.de header.s=dbaedf251592 header.b=nVopATzK;       spf=pass
 (google.com: domain of markus.elfring@web.de designates 212.227.15.3 as
 permitted sender) smtp.mailfrom=Markus.Elfring@web.de
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

> +generate_deps_for_ns() {
> +	$SPATCH --very-quiet --in-place --sp-file \
> +		$srctree/scripts/coccinelle/misc/add_namespace.cocci -D ns=$1 $2
> +}

I would appreciate more constructive answers for specific software development concerns.
https://lore.kernel.org/lkml/1c4420f4-361c-7358-49d9-87d8a51f7920@web.de/
https://lkml.org/lkml/2019/8/15/515

Regards,
Markus

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/81cc3995-ea95-8125-bbd2-2889cc623e23%40web.de.
