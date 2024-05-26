Return-Path: <usb-storage+bncBDZIFAMNOMINV7OLWIDBUBES2IICS@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 730CC8CF2FD
	for <lists+usb-storage@lfdr.de>; Sun, 26 May 2024 11:20:27 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id ffacd0b85a97d-357766bb14fsf695622f8f.2
        for <lists+usb-storage@lfdr.de>; Sun, 26 May 2024 02:20:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716715227; cv=pass;
        d=google.com; s=arc-20160816;
        b=uz5jG63MnzsJPIZ1XCfReaZstxsb58dgN4SlU5TjVwylbhbhFaWUGJX2xcvOGIqVFZ
         7QZxOAes0/MOFOLfpQbd3sXIU7pi5RAABfUZor96V+6O7WOGH+gtw36velfEOFJTCUH7
         do9jYFox3pbK4VdZNvHL//3BqMznrvfFF8jwBMslW0dWWq6gqd9hKNNiZ/jdg8Lvf7nY
         xkYIHEjsMxPCxsYNpVmheo12xkFogjWx1zjDvPbsQLSTohU+C7tN8ygdzretDB5WCd/I
         9PNQV6ZXDiaSKY8dr1L3d3oAg52+H4jGMcnOze2rSi4XTUcS7uVBdsDK06TQjr7PWctE
         ww2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:ui-outboundreport
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=XRrGkfK5dkJBL5N62enH5fzaPbn1xrVF2lYjP1+x+7k=;
        fh=iPViOwSxx+O9K9E+txcupDwoRPJs7slbFMZOf0RQ86o=;
        b=mpewk3/Of0BECbLxQX6Ny5g2lXrr21iNyVa54PQOUA0dZ8GR4ADQOYUAGEul/sJLpo
         SHPiDUUwxsDnBxXgHkXAe1vT6mcRG6Q0Ob1pS30txJAEGvuK4F03zW6EmxDZvLLXRtdb
         8UUUZpzR3rSfyAUtmxSEkWOMOB8PjsAmuAANCaw0+4fidWcWtlV8P76rSPGdfznIBiMM
         l/w9cQ6QwVSjEAFIYg6xvCXBHQFDhddsXL8k5iXUt+fG+s+7uepn/GrwbBa6kQ8vHKin
         putjes3AWpmqwYQXaf5JKS07/wgmQETSKdUn0phRrkHQxNFdwqUfUdRWysCvSlSpXd2X
         SaWA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@web.de header.s=s29768273 header.b=rzKgZG1D;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.4 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716715227; x=1717320027; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=XRrGkfK5dkJBL5N62enH5fzaPbn1xrVF2lYjP1+x+7k=;
        b=V5PO4/J/bRQjzqJWxJz9RHinPHWL+SMR4V2WexXJx4Aczpe9sFQ1jI/lN5rHIOVoNr
         57dwiqqa+EPhmSwLPx9pfR72I3p6DBtNgAD2Cn9zMw2bjJVCD7KQAWUn4L+MUDnv31CC
         uSs7hCtMau1pGikhsjcRp3cwrckZ28bt9iQAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716715227; x=1717320027;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XRrGkfK5dkJBL5N62enH5fzaPbn1xrVF2lYjP1+x+7k=;
        b=Koe+ygK5YdYu4CpGS2qnbjQUTp8L0o7usVwQbtfD+5zdVj2DYeJGDMZHcah8MMxlNJ
         s3vuQhg0a9bRhuAufVRCpzITKg1Vi+qHY75YV+xrcWn7QGrgqQm1BMA2XrCxR85JU8mr
         YsZIAlRqMvYLrOe9eJSvAoY1d/oUGvaEk0FWpLZohoqQg6wpUK3UukHcax0sX8Lk4V/u
         Wct5bVZI0mmDjVW5aXwj0lxeeVkHCV2VCrRh360wteJ7kM0lsNaB54XiGzhFKJT5RDq/
         8Rv+dOxeDZRQNXorhCoGDBwtXmMFSA+OI/EIIUpdKc1ATRyZ4cwHTwtnTmyFdyuZrvn0
         kYHA==
X-Forwarded-Encrypted: i=2; AJvYcCX8xnZcSkcNSbEG3yZ8NXfNhunWNbEjuuJg4clETvOW/P/AyDBuAIMg3IGiUW8TvME+k5Gi/+LkXDoPfzp/iGNksQUskf9UcPuZ
X-Gm-Message-State: AOJu0YxMxPIVlhmirWHiy/2MBeVC3AbJsEM+YMzTW7hfdOOCNRGKMH5U
	q7tlIrPLB3uELGXQ3VI5hFjP9nKLR77DKZZr1e7TFqIlyzT+qkn/R1c/S+zGhew=
X-Google-Smtp-Source: AGHT+IElMSvLOAlGmi4LOq/w15R7Cpdp0SpmU2fEFZY1wjv/I+LuLqLKLbH4+KvwRLR0drD7WSFqAw==
X-Received: by 2002:a05:600c:1c0d:b0:421:1152:b098 with SMTP id 5b1f17b1804b1-4211152b215mr12560295e9.4.1716715226821;
        Sun, 26 May 2024 02:20:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:63c8:0:b0:343:963a:b356 with SMTP id ffacd0b85a97d-355053ab5dals715752f8f.2.-pod-prod-01-eu;
 Sun, 26 May 2024 02:20:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWXiUZUZDH7G9FBoUuqcQMUzpAeRmPUFjoyEvpInkiI5sOvA556BqbIfYjgb367TBcqThBrBu0dD5X2eb8PYlWD5/U+RmYUwg/TjksRPuMa/0Qsbqc=
X-Received: by 2002:a05:6000:400c:b0:356:4a73:af59 with SMTP id ffacd0b85a97d-3564a73b0a5mr4631716f8f.28.1716715225046;
        Sun, 26 May 2024 02:20:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716715225; cv=none;
        d=google.com; s=arc-20160816;
        b=lBhVK+HnuucCAd1+MJvFGPH0B0fB+PmWKq39rQbXTUxPyhxZW5KQiZpV3BqVi8WRHa
         4P+lYOcF42S9d5b6UyRIoowEG9lizEjfBq5xGytKQdicB7na+0bq+QWFrDl56wR91kr4
         lo1gyrQ1aMCuY+AHMqBrR338FnmknKS7gLe/feMJUoPZOJ5UON2QKqaRdskTDc0LX4jk
         3MuYYHHw8a6TYJFVOX6XtSHE098BqF1DBgZ5DWQULWdYqh4tvWsvVox90GhJPOM5q8GA
         HXY0AQBvXyC0ZtS5/1vJsp0TN5ByGVqmv4Tvf77l7CX/Ar5j+JTf6lKiP2sT8deOYj3f
         d48w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=ui-outboundreport:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=eqdB+c9AHV8Vh8prMy2Bz/FOpvhm7Ix0hdzFjT/E4pA=;
        fh=TwHjqMc/ltzR14+QpMhpcwZe/KVSiZ4/1RYquKLAaZ4=;
        b=nLbk3CkeGeAUI4WtYpsQDu1xyPn/Oqm3F1BEbyIsq2q5rvR3Ch2NAzvwBO3eIHWjIY
         STf3mcITWElEphciA4V05ZE6T+8uz6Ku1AC/53z3g9nAw4NcWjlVjXa7dsvsbyTx2eJe
         fwBQE7pDukl5wq0Pm02O/rbZPj0rWa0gA8Y6T3AP2EX4Mp0UVSFTeLriIbDxRxcPmb7T
         0aveI649RsGYDQKvLVvqBHWPMRx3U7RGLW/Rk0GDfSIvDvoxCVMTYTDXuenv+uRcvw/w
         EMuItbX0lySouKFa/1H1vnlBcTBv8baHZt4C0WDX+RJi5cNqRiRoKLt4zerrTfsQH4T4
         LRtQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@web.de header.s=s29768273 header.b=rzKgZG1D;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.4 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=web.de
Received: from mout.web.de (mout.web.de. [212.227.15.4])
        by mx.google.com with ESMTPS id ffacd0b85a97d-35579d7b007si2876667f8f.116.2024.05.26.02.20.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 May 2024 02:20:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of markus.elfring@web.de designates 212.227.15.4 as permitted sender) client-ip=212.227.15.4;
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.83.95]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MF2ke-1sHhUu1Ivg-00FaCL; Sun, 26
 May 2024 11:20:24 +0200
Message-ID: <ce266282-029f-4333-9ef8-6ddce64e661f@web.de>
Date: Sun, 26 May 2024 11:20:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [v6] usb-storage: alauda: Check whether the media
 is initialized
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shichao Lai <shichaorai@gmail.com>, usb-storage@lists.one-eyed-alien.net,
 linux-usb@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>
Cc: LKML <linux-kernel@vger.kernel.org>, Oliver Neukum <oneukum@suse.com>,
 Xingwei Lee <xrivendell7@gmail.com>, Yue Sun <samsun1006219@gmail.com>
References: <20240526012745.2852061-1-shichaorai@gmail.com>
 <79ba60d2-357a-45f0-93af-78879b9f4b02@web.de>
 <2024052647-battle-sacred-83b3@gregkh>
Content-Language: en-GB
From: "'Markus Elfring' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <2024052647-battle-sacred-83b3@gregkh>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:0ObuDBLfuLFa0QOeHXUf9Fax6lqFkPp/xqy7Q1g5mIFWgujlCWQ
 3W5fZGi+ueg86bIyQzYrFoASqXJ/+mGwpka1P+aLcyuKSbFuih6HM1qlG//JuwOa9HMBUQy
 7Na22fDWceunyjGf3NyqINM737mFZ3BR9BAwvOhxhedbDV3u3IwAEZumY1Khl1vS7SBjT0r
 bZZoxNBoQIwKsSDz2DTqA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:AyrklB7QiJI=;9L2S08+WTu0VCvDPknYXCxiKTnC
 /0lWKYZHZ8v1g0HnqKmUHAGexYL2Q0dVu5cXP9cS7atmm68B1PzzKoQeMhHo1Fe4pjCoCv5Sx
 osEJm23xY8bj6c5/TFqWd84v3pSTOtbEytopGu6LaNVtG4EANTrxsYt/+uov7S2Hk7WBifv/u
 8yJUotgU2dnUj04wtO4Ogai9yleDo0WrNvjTwIELRnFAzCI2AHtUdMK7V/j/Hv17rCNl+EsMd
 GjJKpmdB14bpAAXuNBB1++JVnRtp4sxFxBZamHSWmh1t6uMNjtYOXUSVlYOalu/gd08zJGC3W
 K6fuA0KjEj6ShJqlaRHsvg0p3omwGC6xuVnnpV9JnkoODAM0OhFakkc7pS0TYSalZkoFx11wV
 i+snJxFj1lmHZJcW7z7GWboTKUZSPyxCZAAJ47Ngu2VpWHLW8hxmPQ5f2c8U/rBZHLejkJqm3
 O0SiENecwD4iCrSF5ERB6NZi0Ahi7buI3m3H9gsRxLMBr0giPw3heKyFaghip2OKxpVi99JtA
 B8OO8AAj5u5JfFVOu50shT5o5Cj+WF/ZIU/t6/2gVvKyGPxejBw2/8ibFHswvo/VpJMDll4ZV
 DYksbIGGzE3SAPPMjOHGP1XBEdz5C1+O5lt3cuC+klEW5sNTIJfvPokyYKKE9lXnqAN793Pjz
 E+I3waAlBwWSpFgnLeHytze00I9FK7gbN0SxVB0PnTKCY6K9aUI/yqa4PiYEzd2VbrQWNSMZ5
 rYy0QOgP2ELLyE3sn6UakCtQhiq339kqZo55HvumHKFsbWyqPL4N7VsCIXvmUazL9xBv0cMq1
 XI4vDttu91XWBYaLid19z5IDwqFFweoFuCQG553KpznIo=
X-Original-Sender: Markus.Elfring@web.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@web.de header.s=s29768273 header.b=rzKgZG1D;       spf=pass
 (google.com: domain of markus.elfring@web.de designates 212.227.15.4 as
 permitted sender) smtp.mailfrom=Markus.Elfring@web.de;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=web.de
X-Original-From: Markus Elfring <Markus.Elfring@web.de>
Reply-To: Markus Elfring <Markus.Elfring@web.de>
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

>> =E2=80=A6
>>> Fixes: e80b0fade09e ("[PATCH] USB Storage: add alauda support")
>>
>> How do you think about to omit the text =E2=80=9C[PATCH] =E2=80=9D from =
the tag summary?
>
> Then it would be incorrect.

I find this view interesting.


> Again, Markus, please STOP sending review comments that are obviously wro=
ng.

The mentioned tag needs an =E2=80=9Cone line summary=E2=80=9D.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Doc=
umentation/process/submitting-patches.rst?h=3Dv6.9#n145

Do you find it required to repeat a questionable commit subject completely?


> New developers do not know who to ignore and you are telling
> them things that are wrong and not helpful at all.

Additional development views can occasionally become helpful.


> Please stop reviewing patches,

Patch review is one of the usual software development activities.


> this is not ok

I suggest to reconsider such a view once more.


> is actually harmful to our community.

Possible improvements are varying between affected software components.

Regards,
Markus

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/ce266282-029f-4333-9ef8-6ddce64e661f=
%40web.de.
