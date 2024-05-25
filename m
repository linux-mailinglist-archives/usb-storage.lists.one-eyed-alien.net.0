Return-Path: <usb-storage+bncBDZIFAMNOMIL5TWIWIDBUBEZHMOVY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0E18CF0C3
	for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 20:00:31 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id ffacd0b85a97d-357f24b8cabsf92173f8f.3
        for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 11:00:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716660030; cv=pass;
        d=google.com; s=arc-20160816;
        b=EnrQWkLuymuSOXQAnqJ3YG3VgnO/j8F5/2MPFbgeY6PcjLaiVBv5U6ggn09c2wx0Ia
         6TDow6ClQFNqYJauIxxoxOlD8lVa6WjQ90zEW39tOeku1w4FNwXqAwIIRE1Zy7rzRl7v
         D0B4TfbX16R3AAUej0KblpjhqyPTQWsBRRq/cXJ4mJxzoOnx3R99pdueIObxFl3sQxVd
         fcyK2kPlpgOXhUscbKNVqTZ5vMJn/UjG3Vi9GM4BtIGr/ME3U4pA4NgAohscXK/uabJx
         CBEuR5xGp+2+ZkqbEbx9JklBjM+RuAXhYnFtil/FwivTfP6i9iARUg8O8b9lXidGDoFm
         cUMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:ui-outboundreport
         :content-transfer-encoding:in-reply-to:from:content-language:subject
         :references:cc:to:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=IK3zGWAApEADnW8j5Doc9LhjH8BHpErvkg3kf34AQHs=;
        fh=TuS34i6C8hG7xx5fVKnfkHaJCRkhKz963wEhDr3ldFw=;
        b=aMZo2J3OaH97WMA4COWneEuVSqR/sV7evLGZLxBsu9r/LOm15mdCIFjbJLSM3AE0I2
         T6V/OYx+ftfVbEQURDD9JttdE3cZncxufrMaBZLUIU2E59djetIdLcJ+U+KlrAX9FhJD
         unHSPj8jvZHiMol+v/YxNkhWGbu8yLtnfM8YoRX9x/jKtJd9nP7NqGh3lcJ9bgITHn/g
         b/ssJBNM3k+PauBNWNe+WD3jMMmTJuuMOQAZK5L7oLVmcPnHs5ULgZiSUhK03YrELV2r
         cCLqZx0nwOtBPyZOx/dTMC5qe9QQ6isRZzEebm5FJHNMD4mf6FrYOJt/uoFhJHxaCQjx
         qpYg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@web.de header.s=s29768273 header.b=NOOxKcKh;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.4 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716660030; x=1717264830; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:content-transfer-encoding:in-reply-to:from
         :content-language:subject:references:cc:to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=IK3zGWAApEADnW8j5Doc9LhjH8BHpErvkg3kf34AQHs=;
        b=QwUABH0M3QvkKyZYk0AHEjOF3baH/qVRRNbBRPv37+fVXxPXIfgESDF8T2DrCPgpN/
         Le67wgcUid5zRd8MIGJ+YKF5xVN4nhv3RwXUI/nikcO8dArDJJBMZlvfa9Cx1tLL8xYi
         e9qQE1CNslFvkkV60jaXy90wYxJCEREnpLv1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716660030; x=1717264830;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:content-transfer-encoding:in-reply-to:from
         :content-language:subject:references:cc:to:user-agent:mime-version
         :date:message-id:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IK3zGWAApEADnW8j5Doc9LhjH8BHpErvkg3kf34AQHs=;
        b=py1T3HAbcs/EKFUEa3zQFR1a9mNQL5t6+XkpFTx4WK28OzeDbvBwUzaax5NGoNsj8s
         k9+7nqZT7Fp38O+S1Qh4OLHzOFr0D1RXK3mLEGaWa8GA0PY8QvKpcsusXm5fBhKMKE1X
         d7j52zBQwNIVNzvB+Uc1GncqEyp7Z/l3u4Ycco5Pc4/DvPB8dpautPpvln+vqBgj+Wkg
         013Z/wDzWNAt0jdPKNbr3HT3kSgphV0I6AVU01YC+tixAc+jyvHr/sthmDHWmDrDAlMD
         cmeBkCEEYS7ip3hPhuCDDvdPoylSrDsSNQQOEeUKrpnaNV/2gBQpXfe+buo3xOLt/FOw
         V1rg==
X-Forwarded-Encrypted: i=2; AJvYcCUW1huD8NqmSYPWOXoJLAHuEvSleCCZy1w4Jd2lI/KjhGc4CfNIOcmPjcQrWmov6IhezpfqovZosRovgKTV2ZlTXL1xWyWjmX7i
X-Gm-Message-State: AOJu0YxcgMtbeKFNgmkXi3OeF+CgCGhYTdmT/fQMIM5FZBREsqhDPyuA
	qieZptX+Q1xMsItf8MINh5manvGQvHVhUbyu3p+QgA6uZfIsT1HA0pq1s3GjcUA=
X-Google-Smtp-Source: AGHT+IHPQA1pnZ8lIE6Wz8pG6vsWeK43GvHVlzoazgIBXXwJBuhVP4xIudwfgIsoaue1h/acmJ2DtA==
X-Received: by 2002:a05:600c:63d5:b0:417:fbc2:caf8 with SMTP id 5b1f17b1804b1-42108a7a3c0mr41109755e9.23.1716660030437;
        Sat, 25 May 2024 11:00:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:1d10:b0:418:fa47:e714 with SMTP id
 5b1f17b1804b1-42109323b31ls8702965e9.0.-pod-prod-02-eu; Sat, 25 May 2024
 11:00:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWETIDlh8YMaq5ZeBNY4goa1KLnHqbMjc5Iq805oqHrhCsJDWhF83OeYIittrUAFjg4F1FC9bA9Lpa1YzmTcTq/WTGA9gKjFGEw6i/HckSkzSjLxtk=
X-Received: by 2002:a05:6000:18a5:b0:357:b063:183c with SMTP id ffacd0b85a97d-357b0631d3amr768309f8f.5.1716660028617;
        Sat, 25 May 2024 11:00:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716660028; cv=none;
        d=google.com; s=arc-20160816;
        b=iI1cp+Oh7A3B/5SrXQruPjyt2n28B6hkns5fi6URxGcSxHMvB1cZTcgv2yfU4QZNLX
         3x9SKwTx6+ngSTd2k4WdB6ZWe6VGpVrJqumo9Z0XVBjBU3t+PtjK3OuUrD2BD9ya+8sh
         7IuF/v9mJ7U3gWQEEanRqLutYQKrwfYLUm9GgdQsc5Plcd8q1wL3MoVjG8IXCMpxRFLe
         U2B70LHyfrxbadvpBAQk77xRwXiI5q1sa52Bt/GjViKlDPIsYE5tcCwtPQdR5N+IPB9k
         29X5JY/hhyqNah2EPFrmgWnMmYw1QPkrs+sAzDsjWDME6mm/+vKIvWFg0bn5Svw5iwB3
         OmKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=ui-outboundreport:content-transfer-encoding:in-reply-to:from
         :content-language:subject:references:cc:to:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=4p+EeENtrNBhk+BdqQn7xAY7/P5w0W1qsA3OlgQYGGA=;
        fh=Ew+4/Un4prued+JRCNaKW/Fv+R1REzHamw5Zz600Wns=;
        b=otAShaOxYL16K+2vvfi14KamjePkHCQeagDUvUavYVWnKJrIdeSMY0bPfk2pkNX1Y5
         0cs7yJg2c9/V9mJd1mdknddAeasu4ZCkpI7RgENCptqGBqqa3n2FZJAYG8ZhY5q+z5Bh
         lvOC5BMd+e3zPwmYuycyKNFrD/1apjMUPoOto93l6DkaLqFBPkSMcR+3AQ7MY/ShI7J6
         ny1/68kZDLTFrmX4HivCYsfJD0FkE8qHoQ+ifNlVxH0pvOVB22s6mBExWgLpA7rfwAdY
         3HmvLbfOrj1xW4gPGuGkdZxL+jq4VnOJztLI8RWBC7hSMsrSlYN+Cq9RJFOpef18A9Vt
         sCxQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@web.de header.s=s29768273 header.b=NOOxKcKh;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.4 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=web.de
Received: from mout.web.de (mout.web.de. [212.227.15.4])
        by mx.google.com with ESMTPS id ffacd0b85a97d-35588e5aa4dsi2159620f8f.974.2024.05.25.11.00.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 11:00:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of markus.elfring@web.de designates 212.227.15.4 as permitted sender) client-ip=212.227.15.4;
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.83.95]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MgRMB-1siuOJ0G9n-00hjap; Sat, 25
 May 2024 20:00:28 +0200
Message-ID: <7721c32f-06ea-4e8c-894b-cdfb4f6270b4@web.de>
Date: Sat, 25 May 2024 20:00:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Shichao Lai <shichaorai@gmail.com>, usb-storage@lists.one-eyed-alien.net,
 linux-usb@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Oliver Neukum <oneukum@suse.com>,
 Xingwei Lee <xrivendell7@gmail.com>, Yue Sun <samsun1006219@gmail.com>
References: <20240525141020.2520942-1-shichaorai@gmail.com>
Subject: [usb-storage] Re: [PATCH v5] usb-storage: Check whether the media is
 initialized successfully
Content-Language: en-GB
From: "'Markus Elfring' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20240525141020.2520942-1-shichaorai@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:Q2jtdCbdvwkFxXuO0488+GAQQIdetaKP637x3VlWViN3e+5OOgB
 w66bNNcVqgIm0sFx+N0lIc5D6/qZ7Ib0UVrIZ2KA5JQ5RwS6WLVz4ax7m8ynj5f7Gk+hyvo
 YnN/nn0ESPBQTP9BwZ+lknUROPvztDI2cAyH/iG4FMA8vkNr7LXtVHM4YfsvJaEvyif3etA
 s0tK6mcv9r4d8HoIHrvHg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:lDKllwEVkwk=;V4laeXtw9iFysfIld77f31ySKbk
 IaJwFmlUVUQFce6bkVWJNwW+pUZhYzir4QyPcjye4LMympoV7sJYWURhOzB2KsiWNtLPlk+fO
 +MCfDz/LUT73j+EcS+5aasejPDf+OzCIwUIN0yp59vFTYueHZQbovS/zBg4IUxjhEhaVVhhr/
 QuA1p2hoeVpOJHeH+u+bfFgU6b0urLQ8UBeSt2rwxk82TYosX5ok35YU7icDhIGsr+kr1oujK
 FLUkhyKsuxNeOFTLw/PITM+6VdqloH5dqRNxYe2CnBrHSmLfWSspIl1YzSiD4+0buTQhskSrx
 VVG4d+4s+ofBxbk1yN73mxXiEkIGJefOi5OSO6rjg20zKEOGAofw1qIlFzg153cWYBP/usUio
 ota0pug/hcgCniNrHRuvl+KzAHCVRTCl/6JyGjaDA1sT3YVrGLRk4x2vHzbV8DqxMGy/vbMZg
 R5z5Eg0G6FIbLfRojMxaFLQ3Mc20xUBN3OX2Xw6xtMpDsx4U1qANviktLG+pbWO8jMIhm9VwO
 kUwVW3w5CokYVWZhO0WiUUT5rjBqAyC6THCZ5ixGOQK75DF9FeT2OiuYPlRhzgcOMqaG6Z3cu
 /6tCxckN4OHGocohWpwMZRB+iVCta4fXXVuyYCW7UnL5AJ2Qb7BxDBA8wainRpUh3ORcwyxZg
 D7U8ZJMNMBEFD+2g9OsfJRiBjAklD89EQbZlvqjMD4Q5Z2bot9+CGm//94PJNKk8wuQ1s9csX
 9nx/OcDuwnhiUPDp1sw9QKd331+tIYRV+BCTMbe1b/Cj0aau1LMXQrrQaf/ZRt3fEMpND+jBu
 EswABUsVrCVte8AzNZ0OLTEf/v+08RCO8/mdhvrax7Bbs=
X-Original-Sender: Markus.Elfring@web.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@web.de header.s=s29768273 header.b=NOOxKcKh;       spf=pass
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

=E2=80=A6
> - Add an error check for the return value of alauda_init_media().

Does such information indicate a need for the tag =E2=80=9CFixes=E2=80=9D?

Regards,
Markus

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/7721c32f-06ea-4e8c-894b-cdfb4f6270b4=
%40web.de.
