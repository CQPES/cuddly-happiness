module basis
    implicit none

contains
    function emsav(x, c) result(v)
        implicit none
        real*8, dimension(1:10)::x
        real*8, dimension(0:82)::c
        real*8::v
        ! ::::::::::::::::::::
        real*8, dimension(0:82)::p

        call bemsav(x, p)
        v = dot_product(p, c)

        return
    end function emsav

    subroutine bemsav(x, p)
        implicit none
        real*8, dimension(1:10), intent(in)::x
        real*8, dimension(0:82), intent(out)::p
        ! ::::::::::::::::::::
        real*8, dimension(0:261)::m

        call evmono(x, m)
        call evpoly(m, p)

        return
    end subroutine bemsav

    subroutine evmono(x, m)
        implicit none
        real*8, dimension(1:10), intent(in)::x
        real*8, dimension(0:261), intent(out)::m
        !::::::::::::::::::::

        m(0) = 1.0D0
        m(1) = x(10)
        m(2) = x(9)
        m(3) = x(8)
        m(4) = x(7)
        m(5) = x(6)
        m(6) = x(5)
        m(7) = x(4)
        m(8) = x(3)
        m(9) = x(2)
        m(10) = x(1)
        m(11) = m(3)*m(4)
        m(12) = m(2)*m(5)
        m(13) = m(1)*m(6)
        m(14) = m(1)*m(2)
        m(15) = m(1)*m(3)
        m(16) = m(2)*m(3)
        m(17) = m(1)*m(4)
        m(18) = m(2)*m(4)
        m(19) = m(1)*m(5)
        m(20) = m(3)*m(5)
        m(21) = m(4)*m(5)
        m(22) = m(2)*m(6)
        m(23) = m(3)*m(6)
        m(24) = m(4)*m(6)
        m(25) = m(5)*m(6)
        m(26) = m(3)*m(7)
        m(27) = m(5)*m(7)
        m(28) = m(6)*m(7)
        m(29) = m(2)*m(8)
        m(30) = m(4)*m(8)
        m(31) = m(6)*m(8)
        m(32) = m(1)*m(9)
        m(33) = m(4)*m(9)
        m(34) = m(5)*m(9)
        m(35) = m(1)*m(10)
        m(36) = m(2)*m(10)
        m(37) = m(3)*m(10)
        m(38) = m(7)*m(8)
        m(39) = m(7)*m(9)
        m(40) = m(8)*m(9)
        m(41) = m(7)*m(10)
        m(42) = m(8)*m(10)
        m(43) = m(9)*m(10)
        m(44) = m(1)*m(11)
        m(45) = m(2)*m(11)
        m(46) = m(1)*m(12)
        m(47) = m(2)*m(20)
        m(48) = m(2)*m(21)
        m(49) = m(3)*m(21)
        m(50) = m(1)*m(22)
        m(51) = m(1)*m(23)
        m(52) = m(1)*m(24)
        m(53) = m(3)*m(24)
        m(54) = m(1)*m(25)
        m(55) = m(2)*m(25)
        m(56) = m(1)*m(16)
        m(57) = m(1)*m(21)
        m(58) = m(2)*m(24)
        m(59) = m(3)*m(25)
        m(60) = m(1)*m(18)
        m(61) = m(1)*m(20)
        m(62) = m(2)*m(23)
        m(63) = m(4)*m(25)
        m(64) = m(3)*m(27)
        m(65) = m(3)*m(28)
        m(66) = m(5)*m(28)
        m(67) = m(2)*m(30)
        m(68) = m(2)*m(31)
        m(69) = m(4)*m(31)
        m(70) = m(1)*m(33)
        m(71) = m(1)*m(34)
        m(72) = m(4)*m(34)
        m(73) = m(1)*m(36)
        m(74) = m(1)*m(37)
        m(75) = m(2)*m(37)
        m(76) = m(1)*m(26)
        m(77) = m(2)*m(26)
        m(78) = m(1)*m(27)
        m(79) = m(4)*m(27)
        m(80) = m(2)*m(28)
        m(81) = m(4)*m(28)
        m(82) = m(1)*m(29)
        m(83) = m(3)*m(29)
        m(84) = m(1)*m(30)
        m(85) = m(5)*m(30)
        m(86) = m(3)*m(31)
        m(87) = m(5)*m(31)
        m(88) = m(2)*m(32)
        m(89) = m(3)*m(32)
        m(90) = m(2)*m(33)
        m(91) = m(3)*m(34)
        m(92) = m(6)*m(33)
        m(93) = m(6)*m(34)
        m(94) = m(4)*m(35)
        m(95) = m(4)*m(36)
        m(96) = m(5)*m(35)
        m(97) = m(5)*m(37)
        m(98) = m(6)*m(36)
        m(99) = m(6)*m(37)
        m(100) = m(6)*m(38)
        m(101) = m(5)*m(39)
        m(102) = m(4)*m(40)
        m(103) = m(3)*m(41)
        m(104) = m(2)*m(42)
        m(105) = m(1)*m(43)
        m(106) = m(2)*m(38)
        m(107) = m(3)*m(38)
        m(108) = m(4)*m(38)
        m(109) = m(5)*m(38)
        m(110) = m(1)*m(39)
        m(111) = m(3)*m(39)
        m(112) = m(4)*m(39)
        m(113) = m(6)*m(39)
        m(114) = m(1)*m(40)
        m(115) = m(2)*m(40)
        m(116) = m(5)*m(40)
        m(117) = m(6)*m(40)
        m(118) = m(1)*m(41)
        m(119) = m(2)*m(41)
        m(120) = m(5)*m(41)
        m(121) = m(6)*m(41)
        m(122) = m(1)*m(42)
        m(123) = m(3)*m(42)
        m(124) = m(4)*m(42)
        m(125) = m(6)*m(42)
        m(126) = m(2)*m(43)
        m(127) = m(3)*m(43)
        m(128) = m(4)*m(43)
        m(129) = m(5)*m(43)
        m(130) = m(7)*m(40)
        m(131) = m(7)*m(42)
        m(132) = m(7)*m(43)
        m(133) = m(8)*m(43)
        m(134) = m(2)*m(49)
        m(135) = m(1)*m(53)
        m(136) = m(1)*m(55)
        m(137) = m(1)*m(45)
        m(138) = m(1)*m(47)
        m(139) = m(1)*m(48)
        m(140) = m(1)*m(49)
        m(141) = m(1)*m(62)
        m(142) = m(1)*m(58)
        m(143) = m(2)*m(53)
        m(144) = m(1)*m(59)
        m(145) = m(2)*m(59)
        m(146) = m(1)*m(63)
        m(147) = m(2)*m(63)
        m(148) = m(3)*m(63)
        m(149) = m(3)*m(66)
        m(150) = m(2)*m(69)
        m(151) = m(1)*m(72)
        m(152) = m(1)*m(75)
        m(153) = m(2)*m(64)
        m(154) = m(3)*m(79)
        m(155) = m(1)*m(65)
        m(156) = m(3)*m(81)
        m(157) = m(1)*m(66)
        m(158) = m(2)*m(66)
        m(159) = m(3)*m(67)
        m(160) = m(2)*m(85)
        m(161) = m(1)*m(68)
        m(162) = m(1)*m(69)
        m(163) = m(3)*m(69)
        m(164) = m(2)*m(87)
        m(165) = m(3)*m(70)
        m(166) = m(2)*m(71)
        m(167) = m(2)*m(72)
        m(168) = m(3)*m(72)
        m(169) = m(1)*m(92)
        m(170) = m(1)*m(93)
        m(171) = m(3)*m(94)
        m(172) = m(3)*m(95)
        m(173) = m(2)*m(96)
        m(174) = m(2)*m(97)
        m(175) = m(1)*m(98)
        m(176) = m(1)*m(99)
        m(177) = m(1)*m(64)
        m(178) = m(2)*m(65)
        m(179) = m(4)*m(66)
        m(180) = m(1)*m(67)
        m(181) = m(2)*m(86)
        m(182) = m(4)*m(87)
        m(183) = m(1)*m(90)
        m(184) = m(1)*m(91)
        m(185) = m(4)*m(93)
        m(186) = m(1)*m(95)
        m(187) = m(1)*m(97)
        m(188) = m(2)*m(99)
        m(189) = m(2)*m(100)
        m(190) = m(3)*m(100)
        m(191) = m(4)*m(100)
        m(192) = m(5)*m(100)
        m(193) = m(1)*m(101)
        m(194) = m(3)*m(101)
        m(195) = m(4)*m(101)
        m(196) = m(5)*m(113)
        m(197) = m(1)*m(102)
        m(198) = m(2)*m(102)
        m(199) = m(4)*m(116)
        m(200) = m(4)*m(117)
        m(201) = m(1)*m(103)
        m(202) = m(2)*m(103)
        m(203) = m(3)*m(120)
        m(204) = m(3)*m(121)
        m(205) = m(1)*m(104)
        m(206) = m(2)*m(123)
        m(207) = m(2)*m(124)
        m(208) = m(2)*m(125)
        m(209) = m(1)*m(126)
        m(210) = m(1)*m(127)
        m(211) = m(1)*m(128)
        m(212) = m(1)*m(129)
        m(213) = m(3)*m(108)
        m(214) = m(2)*m(109)
        m(215) = m(3)*m(112)
        m(216) = m(1)*m(113)
        m(217) = m(2)*m(116)
        m(218) = m(1)*m(117)
        m(219) = m(2)*m(120)
        m(220) = m(1)*m(121)
        m(221) = m(3)*m(124)
        m(222) = m(1)*m(125)
        m(223) = m(3)*m(128)
        m(224) = m(2)*m(129)
        m(225) = m(2)*m(107)
        m(226) = m(4)*m(109)
        m(227) = m(1)*m(111)
        m(228) = m(4)*m(113)
        m(229) = m(1)*m(115)
        m(230) = m(5)*m(117)
        m(231) = m(1)*m(120)
        m(232) = m(2)*m(121)
        m(233) = m(1)*m(124)
        m(234) = m(3)*m(125)
        m(235) = m(2)*m(128)
        m(236) = m(3)*m(129)
        m(237) = m(2)*m(108)
        m(238) = m(3)*m(109)
        m(239) = m(1)*m(112)
        m(240) = m(3)*m(113)
        m(241) = m(1)*m(116)
        m(242) = m(2)*m(117)
        m(243) = m(1)*m(119)
        m(244) = m(5)*m(121)
        m(245) = m(1)*m(123)
        m(246) = m(4)*m(125)
        m(247) = m(2)*m(127)
        m(248) = m(4)*m(129)
        m(249) = m(4)*m(130)
        m(250) = m(5)*m(130)
        m(251) = m(6)*m(130)
        m(252) = m(2)*m(131)
        m(253) = m(3)*m(131)
        m(254) = m(6)*m(131)
        m(255) = m(1)*m(132)
        m(256) = m(3)*m(132)
        m(257) = m(5)*m(132)
        m(258) = m(1)*m(133)
        m(259) = m(2)*m(133)
        m(260) = m(4)*m(133)
        m(261) = m(7)*m(133)

        return
    end subroutine evmono

    subroutine evpoly(m, p)
        implicit none
        real*8, dimension(0:261), intent(in)::m
        real*8, dimension(0:82), intent(out)::p
        !::::::::::::::::::::

        p(0) = m(0)
        p(1) = m(1) + m(2) + m(3) + m(4) + m(5) + m(6)
        p(2) = m(7) + m(8) + m(9) + m(10)
        p(3) = m(11) + m(12) + m(13)
        p(4) = m(14) + m(15) + m(16) + m(17) + m(18) + m(19) &
            &  + m(20) + m(21) + m(22) + m(23) + m(24) &
            &  + m(25)
        p(5) = m(26) + m(27) + m(28) + m(29) + m(30) + m(31) &
            &  + m(32) + m(33) + m(34) + m(35) + m(36) &
            &  + m(37)
        p(6) = p(1)*p(2) - p(5)
        p(7) = m(38) + m(39) + m(40) + m(41) + m(42) + m(43)
        p(8) = p(1)*p(1) - p(4) - p(3) - p(4) - p(3)
        p(9) = p(2)*p(2) - p(7) - p(7)
        p(10) = m(44) + m(45) + m(46) + m(47) + m(48) + m(49) &
            &  + m(50) + m(51) + m(52) + m(53) + m(54) &
            &  + m(55)
        p(11) = m(56) + m(57) + m(58) + m(59)
        p(12) = m(60) + m(61) + m(62) + m(63)
        p(13) = m(64) + m(65) + m(66) + m(67) + m(68) + m(69) &
            &  + m(70) + m(71) + m(72) + m(73) + m(74) &
            &  + m(75)
        p(14) = p(2)*p(3)
        p(15) = m(76) + m(77) + m(78) + m(79) + m(80) + m(81) &
            &  + m(82) + m(83) + m(84) + m(85) + m(86) &
            &  + m(87) + m(88) + m(89) + m(90) + m(91) &
            &  + m(92) + m(93) + m(94) + m(95) + m(96) &
            &  + m(97) + m(98) + m(99)
        p(16) = p(2)*p(4) - p(15) - p(13)
        p(17) = m(100) + m(101) + m(102) + m(103) + m(104) + m(105)
        p(18) = m(106) + m(107) + m(108) + m(109) + m(110) + m(111) &
            &  + m(112) + m(113) + m(114) + m(115) + m(116) &
            &  + m(117) + m(118) + m(119) + m(120) + m(121) &
            &  + m(122) + m(123) + m(124) + m(125) + m(126) &
            &  + m(127) + m(128) + m(129)
        p(19) = p(1)*p(7) - p(18) - p(17)
        p(20) = m(130) + m(131) + m(132) + m(133)
        p(21) = p(1)*p(3) - p(10)
        p(22) = p(1)*p(4) - p(11) - p(12) - p(10) - p(11) - p(12) - p(10) &
            &  - p(11) - p(12)
        p(23) = p(1)*p(5) - p(15) - p(14) - p(13) - p(13)
        p(24) = p(2)*p(8) - p(23)
        p(25) = p(2)*p(5) - p(18) - p(17) - p(17)
        p(26) = p(1)*p(9) - p(25)
        p(27) = p(2)*p(7) - p(20) - p(20) - p(20)
        p(28) = p(1)*p(8) - p(22) - p(21)
        p(29) = p(2)*p(9) - p(27)
        p(30) = m(134) + m(135) + m(136)
        p(31) = m(137) + m(138) + m(139) + m(140) + m(141) + m(142) &
            &  + m(143) + m(144) + m(145) + m(146) + m(147) &
            &  + m(148)
        p(32) = m(149) + m(150) + m(151) + m(152)
        p(33) = m(153) + m(154) + m(155) + m(156) + m(157) + m(158) &
            &  + m(159) + m(160) + m(161) + m(162) + m(163) &
            &  + m(164) + m(165) + m(166) + m(167) + m(168) &
            &  + m(169) + m(170) + m(171) + m(172) + m(173) &
            &  + m(174) + m(175) + m(176)
        p(34) = m(177) + m(178) + m(179) + m(180) + m(181) + m(182) &
            &  + m(183) + m(184) + m(185) + m(186) + m(187) &
            &  + m(188)
        p(35) = p(2)*p(10) - p(33)
        p(36) = p(2)*p(11) - p(32)
        p(37) = p(2)*p(12) - p(34)
        p(38) = m(189) + m(190) + m(191) + m(192) + m(193) + m(194) &
            &  + m(195) + m(196) + m(197) + m(198) + m(199) &
            &  + m(200) + m(201) + m(202) + m(203) + m(204) &
            &  + m(205) + m(206) + m(207) + m(208) + m(209) &
            &  + m(210) + m(211) + m(212)
        p(39) = m(213) + m(214) + m(215) + m(216) + m(217) + m(218) &
            &  + m(219) + m(220) + m(221) + m(222) + m(223) &
            &  + m(224)
        p(40) = m(225) + m(226) + m(227) + m(228) + m(229) + m(230) &
            &  + m(231) + m(232) + m(233) + m(234) + m(235) &
            &  + m(236)
        p(41) = m(237) + m(238) + m(239) + m(240) + m(241) + m(242) &
            &  + m(243) + m(244) + m(245) + m(246) + m(247) &
            &  + m(248)
        p(42) = p(3)*p(7) - p(39)
        p(43) = p(4)*p(7) - p(40) - p(41) - p(38)
        p(44) = m(249) + m(250) + m(251) + m(252) + m(253) + m(254) &
            &  + m(255) + m(256) + m(257) + m(258) + m(259) &
            &  + m(260)
        p(45) = p(1)*p(20) - p(44)
        p(46) = m(261)
        p(47) = p(3)*p(4) - p(31)
        p(48) = p(1)*p(10) - p(31) - p(30) - p(47) - p(31) - p(30) - p(30) &
            &  - p(30)
        p(49) = p(1)*p(11) - p(31)
        p(50) = p(1)*p(12) - p(31)
        p(51) = p(1)*p(13) - p(34) - p(33) - p(32) - p(32) - p(32)
        p(52) = p(3)*p(5) - p(33)
        p(53) = p(4)*p(5) - p(36) - p(35) - p(34) - p(33) - p(32) - p(51) &
            &  - p(34) - p(32) - p(32)
        p(54) = p(2)*p(21) - p(52)
        p(55) = p(1)*p(15) - p(36) - p(35) - p(34) - p(33) - p(53) - p(36) &
            &  - p(34)
        p(56) = p(2)*p(22) - p(55) - p(53) - p(51)
        p(57) = p(1)*p(17) - p(42) - p(38)
        p(58) = p(1)*p(18) - p(43) - p(40) - p(41) - p(39) - p(38) - p(40) &
            &  - p(41) - p(39)
        p(59) = p(1)*p(19) - p(43) - p(42)
        p(60) = p(2)*p(13) - p(41) - p(38)
        p(61) = p(3)*p(9)
        p(62) = p(2)*p(15) - p(43) - p(40) - p(38) - p(40)
        p(63) = p(2)*p(16) - p(43) - p(41)
        p(64) = p(2)*p(17) - p(44)
        p(65) = p(5)*p(7) - p(45) - p(44) - p(64) - p(44)
        p(66) = p(2)*p(18) - p(45) - p(44) - p(65) - p(45) - p(44)
        p(67) = p(2)*p(19) - p(45)
        p(68) = p(2)*p(20) - p(46) - p(46) - p(46) - p(46)
        p(69) = p(3)*p(3) - p(30) - p(30)
        p(70) = p(4)*p(4) - p(31) - p(30) - p(49) - p(50) - p(48) - p(31) &
            &  - p(30) - p(49) - p(50) - p(48) - p(31) &
            &  - p(30) - p(31) - p(30)
        p(71) = p(3)*p(8) - p(48)
        p(72) = p(4)*p(8) - p(49) - p(50) - p(47)
        p(73) = p(1)*p(23) - p(53) - p(52) - p(51)
        p(74) = p(2)*p(28) - p(73)
        p(75) = p(2)*p(23) - p(58) - p(57) - p(57)
        p(76) = p(8)*p(9) - p(75)
        p(77) = p(7)*p(7) - p(46) - p(68) - p(46) - p(68) - p(46) - p(46) &
            &  - p(46) - p(46)
        p(78) = p(2)*p(25) - p(65) - p(64)
        p(79) = p(1)*p(29) - p(78)
        p(80) = p(7)*p(9) - p(68)
        p(81) = p(1)*p(28) - p(72) - p(71)
        p(82) = p(2)*p(29) - p(80)

        return
    end subroutine evpoly

end module basis